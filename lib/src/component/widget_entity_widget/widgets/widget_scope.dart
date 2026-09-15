import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/scope/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';

class WidgetScope extends StatelessWidget {
  final WidgetEntityScope entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetScope({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetEntityWidget(
      entity: entity.args.child,
      projectId: projectId,
      selector: [
        ...selector,
        if (entity.args.child?.id case WidgetEntityId id)
          .new(arg: ScopeArg.child.definition, entityId: id),
      ],
    );
  }
}
