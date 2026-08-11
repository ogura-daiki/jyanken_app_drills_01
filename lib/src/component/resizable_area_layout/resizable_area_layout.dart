import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:jyanken_app_drills/src/component/mouse_hover_listener.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area_layout_item.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area_type.dart';

extension SizeAxis on Size {
  double getAxisValue(Axis axis) => switch (axis) {
    .vertical => height,
    .horizontal => width,
  };
}

extension AxisFlip on Axis {
  Axis get crossAxis => switch (this) {
    .horizontal => .vertical,
    .vertical => .horizontal,
  };
}

extension OffsetAxis on Offset {
  Offset addAxis(Axis axis, double value) => switch (axis) {
    .vertical => .new(dx, dy + value),
    .horizontal => .new(dx + value, dy),
  };

  double getAxisValue(Axis axis) => switch (axis) {
    .vertical => dy,
    .horizontal => dx,
  };
}

extension RectAxis on Rect {
  Rect addAxisStart(Axis axis, double value) => switch (axis) {
    .vertical => .fromLTWH(left, top + value, width, height),
    .horizontal => .fromLTWH(left + value, top, width, height),
  };

  double getAxisStart(Axis axis) => switch (axis) {
    .vertical => top,
    .horizontal => left,
  };
  double getAxisSize(Axis axis) => switch (axis) {
    .vertical => height,
    .horizontal => width,
  };

  Rect setAxisSize(Axis axis, double value) => switch (axis) {
    .vertical => .fromLTWH(left, top, width, value),
    .horizontal => .fromLTWH(left, top, value, height),
  };
}

class ResizableAreaLayout extends StatefulWidget {
  final List<ResizableArea> areas;
  final Widget Function(int i) thumbBuilder;
  final Axis mainAxis;

  const ResizableAreaLayout({
    super.key,
    required this.areas,
    required this.mainAxis,
    required this.thumbBuilder,
  });

  @override
  State<ResizableAreaLayout> createState() => _ResizableAreaLayoutState();
}

extension EntryIterableToMap<K, V> on Iterable<MapEntry<K, V>> {
  Map<K, V> toMap() => Map.fromEntries(this);
}

class _ResizableAreaLayoutState extends State<ResizableAreaLayout> {
  late Map<String, ResizableArea> areasConfig;

  @override
  void initState() {
    assert(
      widget.areas.map((e) => e.areaName).toSet().length == widget.areas.length,
    );
    areasConfig = widget.areas.map((e) => MapEntry(e.areaName, e)).toMap();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ResizableAreaLayout old) {
    assert(
      widget.areas.map((e) => e.areaName).toSet().length == widget.areas.length,
    );
    areasConfig = widget.areas
        .map(
          (e) => MapEntry(
            e.areaName,
            e.copyWith(type: areasConfig[e.areaName]?.type ?? e.type),
          ),
        )
        .toMap();
    super.didUpdateWidget(old);
  }

  final storeDelta = <int, double>{};

  @override
  Widget build(BuildContext context) {
    final layoutItems = <ResizableAreaLayoutItem>[];

    for (final (i, entry) in areasConfig.entries.indexed) {
      layoutItems.add(.area(areaName: entry.key, layoutId: i));
    }

    for (int i = 0; i < areasConfig.length - 1; i++) {
      layoutItems.add(.thumb(layoutId: areasConfig.length + i, thumbIndex: i));
    }

    final delegate = ResizableAreaLayoutDelegate(
      items: layoutItems,
      configs: areasConfig.entries.map((e) => e.value.type).toList(),
      mainAxis: widget.mainAxis,
    );

    final layoutWidgets = [
      for (final layoutItem in layoutItems)
        switch (layoutItem) {
          ResizableAreaLayoutItemArea area => LayoutId(
            id: area.layoutId,
            child: ClipRRect(child: areasConfig[area.areaName]!.widget),
          ),
          ResizableAreaLayoutItemThumb thumb => LayoutId(
            id: layoutItem.layoutId,
            child: GestureDetector(
              onVerticalDragUpdate: switch (widget.mainAxis) {
                .horizontal => null,
                .vertical => (details) {
                  _tryUpdateAreaSpace(
                    details: details,
                    delegate: delegate,
                    layoutItems: layoutItems,
                    thumb: thumb,
                  );
                },
              },
              onHorizontalDragUpdate: switch (widget.mainAxis) {
                .vertical => null,
                .horizontal => (details) {
                  _tryUpdateAreaSpace(
                    details: details,
                    delegate: delegate,
                    layoutItems: layoutItems,
                    thumb: thumb,
                  );
                },
              },
              child: MouseHoverListener(
                builder: (hover) {
                  return AnimatedOpacity(
                    opacity: hover ? 1 : 0.1,
                    duration: .new(milliseconds: 300),
                    curve: Curves.ease,
                    child: widget.thumbBuilder(layoutItem.thumbIndex),
                  );
                },
              ),
            ),
          ),
        },
    ];

    return CustomMultiChildLayout(delegate: delegate, children: layoutWidgets);
  }

  void _tryUpdateAreaSpace({
    required DragUpdateDetails details,
    required ResizableAreaLayoutDelegate delegate,
    required List<ResizableAreaLayoutItem> layoutItems,
    required ResizableAreaLayoutItemThumb thumb,
  }) {
    final delta =
        (details.primaryDelta ?? 0) + (storeDelta[thumb.thumbIndex] ?? 0);
    final item = layoutItems[thumb.thumbIndex] as ResizableAreaLayoutItemArea;
    final updated = _updateAreaSpace(
      delta: delta,
      item: item,
      delegate: delegate,
    );
    storeDelta[thumb.thumbIndex] = updated ? 0.0 : delta;
  }

  bool _updateAreaSpace({
    required double delta,
    required ResizableAreaLayoutItemArea item,
    required ResizableAreaLayoutDelegate delegate,
  }) {
    try {
      final size = context.size!;
      final area = areasConfig[item.areaName]!;
      final config = area.type;
      if (config is ResizableAreaTypeWeight) {
        throw Exception();
      }

      final resolvedSize = delegate.getResolvedMainAxisSize(size);
      final currentSize = resolvedSize[config];
      if (currentSize == null) {
        return false;
      }
      final ratioSpace = resolvedSize.entries
          .where((e) => e.key is! ResizableAreaTypeFixed)
          .map((e) => e.value)
          .reduce((v, e) => v + e);
      final newConfig = switch (config) {
        ResizableAreaTypeFixed f => f.copyWith(
          initial: max(0, currentSize + delta),
        ),
        ResizableAreaTypeRatio r => r.copyWith(
          ratio: max(0, (currentSize + delta) / ratioSpace),
        ),
        ResizableAreaTypeWeight w => w.copy(),
      };

      setState(() {
        areasConfig[item.areaName] = area.copyWith(type: newConfig);
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}

class ResizableAreaLayoutDelegate extends MultiChildLayoutDelegate {
  final List<ResizableAreaLayoutItem> items;
  final List<ResizableAreaType> configs;
  final Axis mainAxis;
  ResizableAreaLayoutDelegate({
    super.relayout,
    required this.items,
    required this.configs,
    required this.mainAxis,
  });

  Axis get crossAxis => mainAxis.crossAxis;

  Map<ResizableAreaType, double> _resolveMainAxisSize({
    required double size,
    required List<ResizableAreaType> configs,
  }) {
    final sizeMap = <ResizableAreaType, double>{};

    var sizeLimit = size;

    for (final fixedType in configs.whereType<ResizableAreaTypeFixed>()) {
      sizeLimit -= fixedType.initial;
      var result = fixedType.initial;
      if (sizeLimit < 0) {
        result = max(0, result + sizeLimit);
      }
      sizeMap[fixedType] = result;
    }

    final ratioSize = max(0, sizeLimit);
    for (final ratioType in configs.whereType<ResizableAreaTypeRatio>()) {
      var result = ratioSize * ratioType.ratio;
      sizeLimit -= result;
      if (sizeLimit < 0) {
        result = max(0, result + sizeLimit);
      }
      sizeMap[ratioType] = result;
    }

    final weightSum = configs
        .whereType<ResizableAreaTypeWeight>()
        .map((e) => e.weight)
        .reduce((v, e) => v += e);

    sizeLimit = max(0, sizeLimit);
    for (final weightType in configs.whereType<ResizableAreaTypeWeight>()) {
      var result = sizeLimit * weightType.weight / weightSum;
      sizeMap[weightType] = result;
    }

    return sizeMap;
  }

  Map<ResizableAreaType, double> _resolvedMainAxisSize = {};
  Map<ResizableAreaType, double> getResolvedMainAxisSize(Size size) {
    if (_resolvedMainAxisSize.isEmpty) {
      _resolvedMainAxisSize = _resolveMainAxisSize(
        size: size.getAxisValue(mainAxis),
        configs: configs,
      );
    }
    return {..._resolvedMainAxisSize};
  }

  @override
  void performLayout(Size size) {
    getResolvedMainAxisSize(size);
    final rects = <Rect>[];

    var currentRect = Rect.zero.setAxisSize(
      crossAxis,
      size.getAxisValue(crossAxis),
    );
    for (final config in configs) {
      currentRect = currentRect
          .addAxisStart(mainAxis, currentRect.getAxisSize(mainAxis))
          .setAxisSize(mainAxis, _resolvedMainAxisSize[config]!);
      rects.add(currentRect);
    }

    for (final item in [...items]..sort(_sortItems)) {
      switch (item) {
        case ResizableAreaLayoutItemArea():
          _layoutArea(rect: rects[item.layoutId], layoutId: item.layoutId);
          break;
        case ResizableAreaLayoutItemThumb():
          _layoutThumb(
            size: size,
            offset: rects[item.thumbIndex + 1].topLeft,
            layoutId: item.layoutId,
          );
          break;
      }
    }
  }

  void _layoutArea({required Rect rect, required int layoutId}) {
    layoutChild(
      layoutId,
      .expand(width: rect.size.width, height: rect.size.height),
    );
    positionChild(layoutId, Offset(rect.left, rect.top));
  }

  void _layoutThumb({
    required Size size,
    required Offset offset,
    required int layoutId,
  }) {
    final childSize = layoutChild(layoutId, switch (mainAxis) {
      .horizontal => .tightFor(height: size.height),
      .vertical => .tightFor(width: size.width),
    });
    positionChild(
      layoutId,
      offset.addAxis(mainAxis, childSize.getAxisValue(mainAxis) * -0.5),
    );
  }

  int _sortItems(ResizableAreaLayoutItem a, ResizableAreaLayoutItem b) {
    if (a.runtimeType != b.runtimeType) {
      return switch (a) {
        ResizableAreaLayoutItemArea() => -1,
        ResizableAreaLayoutItemThumb() => 1,
      };
    }

    return a.layoutId.compareTo(b.layoutId);
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return oldDelegate != this;
  }
}

@Preview(name: 'resizable area widget')
Widget resizableAreaWidgetPreview() {
  return SizedBox(
    width: 500,
    height: 500,
    child: ResizableAreaLayout(
      areas: [
        .new(
          areaName: "1",
          type: .fixed(100),
          widget: Container(color: Colors.red),
        ),
        .new(
          areaName: "2",
          type: .ratio(0.5),
          widget: Container(color: Colors.green),
        ),
        .new(
          areaName: "3",
          type: .expand(1),
          widget: Container(color: Colors.blue, child: Text("test")),
        ),
      ],
      mainAxis: .horizontal,
      thumbBuilder: (i) => Container(
        width: 8,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: .all(color: Colors.black, width: 1),
          borderRadius: .circular(16),
        ),
      ),
    ),
  );
}
