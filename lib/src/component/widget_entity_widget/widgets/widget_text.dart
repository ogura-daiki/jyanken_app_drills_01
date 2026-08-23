import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetText extends StatelessWidget {
  final WidgetEntityText entity;

  const WidgetText({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Text(
      entity.args.text,
      style: entity.args.style?.toTextStyle(context),
    );
  }
}
