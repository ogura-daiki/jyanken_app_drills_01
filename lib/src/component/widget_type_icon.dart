import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_type.dart';

class WidgetTypeIcon extends StatelessWidget {
  final WidgetType type;
  final double? size;
  final Color? color;

  const WidgetTypeIcon({super.key, required this.type, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: .new(color: color, size: size),
      child: switch (type) {
        .container => const Icon(Icons.crop_free),
        .text => const Icon(Icons.title),
        .column => const RotatedBox(
          quarterTurns: 1,
          child: Icon(Icons.view_column),
        ),
        .center => const Icon(Icons.center_focus_strong),
      },
    );
  }
}
