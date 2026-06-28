import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_type_icon.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';

class WidgetCatalogItem extends StatelessWidget {
  final WidgetType type;

  const WidgetCatalogItem({super.key, required this.type});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const .all(8),
        child: Column(
          spacing: 8,
          crossAxisAlignment: .stretch,
          mainAxisSize: .min,
          children: [
            Expanded(
              child: Center(child: WidgetTypeIcon(type: type)),
            ),
            Text(type.name),
          ],
        ),
      ),
    );
  }
}
