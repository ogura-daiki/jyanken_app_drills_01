import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog_item.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';

class WidgetCatalog extends HookWidget {
  const WidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final showItems = useState(true);
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
                    const Icon(Icons.list),
                    const Expanded(child: Text("ウィジェットカタログ")),
                    IconButton(
                      onPressed: () {
                        showItems.value = !showItems.value;
                      },
                      icon: AnimatedRotation(
                        turns: showItems.value ? 0 : 0.5,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                        child: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: showItems.value,
              child: AspectRatio(
                aspectRatio: 1.2,
                child: GridView.builder(
                  padding: const .all(4),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 80,
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: WidgetType.values.length,
                  itemBuilder: (context, index) {
                    final type = WidgetType.values[index];
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
