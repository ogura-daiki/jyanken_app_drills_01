import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/selection_node.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';

const List<Color> loopColor = [
  Colors.yellow,
  Colors.green,
  Colors.red,
  Colors.blue,
];

class WidgetTreeEditor extends StatelessWidget {
  final int depth;
  final WidgetEntity entity;
  final void Function(WidgetEntity? newEntity) onChange;
  final void Function(SelectionNode selection) onSelection;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onChange,
    required this.onSelection,
    this.depth = 0,
  });

  @override
  Widget build(BuildContext context) {
    final wrapper = WidgetArgsWrapper.fromWidget(entity);
    final subTree = wrapper.args.entries.where((e) => e.key.type.hasChild);

    return Container(
      color: Color.lerp(
        Theme.of(context).colorScheme.surface,
        loopColor[depth % loopColor.length],
        0.3,
      ),
      child: Column(
        crossAxisAlignment: .stretch,
        mainAxisSize: .min,
        mainAxisAlignment: .start,
        children: [
          Material(
            child: InkWell(
              child: Ink(
                decoration: BoxDecoration(
                  color: Color.lerp(
                    Theme.of(context).colorScheme.surface,
                    loopColor[depth % loopColor.length],
                    0.3,
                  ),
                ),
                child: Padding(
                  padding: .only(
                    left: 8 + 8 * depth.toDouble(),
                    right: 8,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    mainAxisSize: .max,
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .center,
                    spacing: 4,
                    children: [
                      switch (entity.type) {
                        .text => Icon(Icons.label),
                        .column => Container(
                          transform: .rotationZ(pi / 2),
                          transformAlignment: .center,
                          child: Icon(Icons.view_column),
                        ),
                        .center => Icon(Icons.center_focus_strong),
                      },
                      Expanded(child: Text(entity.type.name)),
                      IconButton(
                        onPressed: () {
                          onChange(null);
                        },
                        icon: Icon(Icons.delete_forever),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                onSelection(.new(entity: entity, onChange: onChange));
              },
            ),
          ),
          ...subTree.map((e) {
            return Column(
              crossAxisAlignment: .stretch,
              mainAxisSize: .min,
              mainAxisAlignment: .start,
              children: [
                Padding(
                  padding: .only(
                    left: 16 + 8 * depth.toDouble(),
                    right: 8,
                    top: 4,
                    bottom: 0,
                  ),
                  child: Text(e.key.name),
                ),
                ...switch (e.key.type) {
                  .widget => [
                    switch (e.value) {
                      WidgetEntity we => WidgetTreeEditor(
                        depth: depth + 1,
                        entity: we,
                        onSelection: onSelection,
                        onChange: (newEntity) {
                          final newArgs = {...wrapper.args};
                          newArgs[e.key] = newEntity;
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                      ),
                      _ => DragTarget(
                        onWillAcceptWithDetails: (details) {
                          return details.data is WidgetType;
                        },
                        onAcceptWithDetails: (details) {
                          final data = details.data;
                          if (data is! WidgetType) return;

                          final newArgs = {...wrapper.args};

                          newArgs[e.key] = WidgetEntity.fromType(data);
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                        builder: (context, candidateData, rejectedData) {
                          late final Color bgColor;
                          late final double borderWidth;
                          late final Color borderColor;
                          late final FontWeight fontWeight;
                          if (candidateData.firstOrNull is! WidgetType) {
                            bgColor = Colors.transparent;
                            borderWidth = 1;
                            borderColor = Theme.of(
                              context,
                            ).colorScheme.onSurface;
                            fontWeight = .normal;
                          } else {
                            bgColor = Theme.of(
                              context,
                            ).colorScheme.primaryContainer;
                            borderWidth = 2;
                            borderColor = Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer;
                            fontWeight = .bold;
                          }
                          return Padding(
                            padding: const .all(4),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: bgColor,
                                border: Border.all(
                                  color: borderColor,
                                  width: borderWidth,
                                ),
                                borderRadius: .circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "カタログからドロップして追加",
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        color: borderColor,
                                        fontWeight: fontWeight,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    },
                  ],
                  .widgetList => [
                    ...(e.value as List<WidgetEntity>).indexed.map((entry) {
                      final idx = entry.$1;
                      final we = entry.$2;
                      return WidgetTreeEditor(
                        depth: depth + 1,
                        entity: we,
                        onSelection: (selection) {
                          onSelection(selection);
                        },
                        onChange: (newEntity) {
                          final newArgs = {...wrapper.args};
                          List<WidgetEntity?> newList = [...newArgs[e.key]];
                          newList[idx] = newEntity;
                          newArgs[e.key] = newList
                              .whereType<WidgetEntity>()
                              .toList();
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                      );
                    }),

                    Container(
                      color: Color.lerp(
                        Theme.of(context).colorScheme.surface,
                        loopColor[(depth + 1) % loopColor.length],
                        0.3,
                      ),
                      child: DragTarget(
                        onWillAcceptWithDetails: (details) {
                          return details.data is WidgetType;
                        },
                        onAcceptWithDetails: (details) {
                          final data = details.data;
                          if (data is! WidgetType) return;

                          final newArgs = {...wrapper.args};
                          List<WidgetEntity?> newList = [...newArgs[e.key]];
                          newList.add(.fromType(data));
                          newArgs[e.key] = newList
                              .whereType<WidgetEntity>()
                              .toList();
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                        builder: (context, candidateData, rejectedData) {
                          late final Color bgColor;
                          late final double borderWidth;
                          late final Color borderColor;
                          late final FontWeight fontWeight;
                          if (candidateData.firstOrNull is! WidgetType) {
                            bgColor = Colors.transparent;
                            borderWidth = 1;
                            borderColor = Theme.of(
                              context,
                            ).colorScheme.onSurface;
                            fontWeight = .normal;
                          } else {
                            bgColor = Theme.of(
                              context,
                            ).colorScheme.primaryContainer;
                            borderWidth = 2;
                            borderColor = Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer;
                            fontWeight = .bold;
                          }
                          return Padding(
                            padding: const .all(4),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: bgColor,
                                border: Border.all(
                                  color: borderColor,
                                  width: borderWidth,
                                ),
                                borderRadius: .circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "カタログからドロップして追加",
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        color: borderColor,
                                        fontWeight: fontWeight,
                                      ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                  _ => [Text("空")],
                },
              ],
            );
          }),
        ],
      ),
    );
  }
}
