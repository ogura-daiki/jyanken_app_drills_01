import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/container/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';

class WidgetContainer extends StatelessWidget {
  final WidgetEntityContainer entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetContainer({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: entity.args.color?.color),
      width: entity.args.width,
      height: entity.args.height,
      clipBehavior: .antiAliasWithSaveLayer,
      child: WidgetEntityWidget(
        projectId: projectId,
        entity: entity.args.child,
        selector: [
          ...selector,
          if (entity.args.child?.id case WidgetEntityId id)
            .new(arg: ContainerArg.child.definition, entityId: id),
        ],
      ),
    );
  }
}
