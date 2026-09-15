import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetText extends StatelessWidget {
  final WidgetEntityText entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetText({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      entity.args.text,
      style: entity.args.style?.toTextStyle(context),
    );
  }
}
