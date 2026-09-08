import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog_item.dart';
import 'package:jyanken_app_drills/src/core/line_height_ext.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';

class WidgetCatalog extends HookWidget {
  final Set<WidgetType> widgetTypes;
  final bool open;
  final void Function(bool open) onToggleOpen;
  const WidgetCatalog({
    super.key,
    required this.widgetTypes,
    required this.open,
    required this.onToggleOpen,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 150),
      child: Material(
        child: Column(
          crossAxisAlignment: .stretch,
          mainAxisSize: .min,
          mainAxisAlignment: .start,
          children: [
            Material(
              elevation: 1,
              child: Padding(
                padding: const .only(left: 8),
                child: Row(
                  spacing: 8,
                  crossAxisAlignment: .center,
                  mainAxisSize: .max,
                  children: [
                    Icon(
                      Icons.list,
                      size: TextTheme.of(context).bodyMedium?.lineHeight(),
                    ),
                    Expanded(
                      child: Text(
                        "ウィジェットカタログ",
                        style: TextTheme.of(context).bodyMedium,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        onToggleOpen(!open);
                      },
                      icon: AnimatedRotation(
                        turns: open ? 0 : 0.5,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                        child: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: open,
                child: GridView.builder(
                  padding: const .all(4),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 80,
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: widgetTypes.length,
                  itemBuilder: (context, index) {
                    final type = widgetTypes.elementAt(index);
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        return Draggable(
                          data: type,
                          dragAnchorStrategy: (draggable, context, position) {
                            return .new(
                              constraints.maxWidth * 0.8 / 2,
                              constraints.maxHeight * 0.8 / 2,
                            );
                          },
                          feedback: Opacity(
                            opacity: 0.75,
                            child: SizedBox(
                              width: constraints.maxWidth * 0.8,
                              height: constraints.maxHeight * 0.8,
                              child: FittedBox(
                                child: SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                  child: WidgetCatalogItem(type: type),
                                ),
                              ),
                            ),
                          ),
                          child: WidgetCatalogItem(type: type),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
