import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetText extends StatelessWidget {
  final WidgetEntityText entity;

  const WidgetText({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Text(
      entity.args.text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: entity.args.fontSize,
        color: entity.args.color?.color,
      ),
    );
  }
}
