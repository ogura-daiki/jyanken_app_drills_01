import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetContainer extends StatelessWidget {
  final WidgetEntityContainer entity;

  const WidgetContainer({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      width: entity.args.width,
      height: entity.args.height,
      clipBehavior: .antiAliasWithSaveLayer,
      child: WidgetEntityWidget(entity: entity.args.child),
    );
  }
}
