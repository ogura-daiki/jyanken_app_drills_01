import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/root/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';

class WidgetRoot extends StatelessWidget {
  final WidgetEntityRoot entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetRoot({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });
  @override
  Widget build(BuildContext context) {
    return WidgetEntityWidget(
      projectId: projectId,
      entity: entity.args.child,
      selector: [
        ...selector,
        if (entity.args.child?.id case WidgetEntityId id)
          .new(arg: RootArg.child.definition, entityId: id),
      ],
    );
  }
}

@Preview(name: 'root widget')
Widget previewRootWidget() {
  return WidgetRoot(
    projectId: .userProject("test"),
    selector: [],
    entity: WidgetEntityRoot(
      id: .create(),
      args: .new(
        child: .container(
          id: .create(),
          args: .new(
            height: 100,
            width: 100,
            color: .fromColor(Colors.red),
            child: .center(
              id: .create(),
              args: .new(
                child: .text(
                  id: .create(),
                  args: .new(
                    text: "test",
                    style: .new(color: .fromColor(Colors.white)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
