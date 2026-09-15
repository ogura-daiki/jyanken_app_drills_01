import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/align/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';

class WidgetAlign extends StatelessWidget {
  final WidgetEntityAlign entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetAlign({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: entity.args.alignment.value,
      child: WidgetEntityWidget(
        entity: entity.args.child,
        projectId: projectId,
        selector: [
          ...selector,
          if (entity.args.child?.id case WidgetEntityId id)
            .new(arg: AlignArg.child.definition, entityId: id),
        ],
      ),
    );
  }
}
