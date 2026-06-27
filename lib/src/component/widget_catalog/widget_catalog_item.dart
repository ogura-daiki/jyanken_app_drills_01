import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';

class WidgetCatalogItem extends StatelessWidget {
  final WidgetType type;

  const WidgetCatalogItem({super.key, required this.type});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const .all(8),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .stretch,
            mainAxisSize: .min,
            children: [
              Expanded(
                child: Center(
                  child: switch (type) {
                    .text => Text("Text", style: TextStyle(fontWeight: .bold)),
                    .column => FittedBox(
                      child: Container(
                        transform: .rotationZ(pi / 2),
                        transformAlignment: .center,
                        child: const Icon(Icons.view_column),
                      ),
                    ),
                    .center => FittedBox(
                      child: const Icon(Icons.center_focus_strong),
                    ),
                  },
                ),
              ),
              Text(type.name),
            ],
          ),
        ),
      ),
    );
  }
}
