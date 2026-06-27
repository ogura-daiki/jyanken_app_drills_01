import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog_item.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';

class WidgetCatalog extends StatelessWidget {
  const WidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: .stretch,
        mainAxisSize: .min,
        mainAxisAlignment: .start,
        children: [
          Material(
            elevation: 1,
            child: Row(
              spacing: 8,
              crossAxisAlignment: .center,
              mainAxisSize: .max,
              children: [
                Icon(Icons.list),
                Expanded(child: Text("ウィジェットカタログ")),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 1.2,
            child: GridView.builder(
              padding: .all(4),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
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
                          child: WidgetCatalogItem(type: type),
                        ),
                      ),
                      child: WidgetCatalogItem(type: type),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
