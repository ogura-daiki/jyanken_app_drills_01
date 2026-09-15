import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/row/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetRow extends StatelessWidget {
  final WidgetEntityRow entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetRow({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: entity.args.spacing,
      mainAxisAlignment: entity.args.mainAxisAlignment,
      mainAxisSize: entity.args.mainAxisSize,
      crossAxisAlignment: entity.args.crossAxisAlignment,
      children: entity.args.children
          .map(
            (we) => WidgetEntityWidget(
              projectId: projectId,
              entity: we,
              selector: [
                ...selector,
                .new(arg: RowArg.children.definition, entityId: we.id),
              ],
            ),
          )
          .toList(),
    );
  }
}
