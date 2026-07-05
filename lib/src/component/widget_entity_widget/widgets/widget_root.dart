import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class WidgetRoot extends StatelessWidget {
  final WidgetEntity entity;

  const WidgetRoot({super.key, required this.entity});
  @override
  Widget build(BuildContext context) {
    return WidgetEntityWidget(entity: entity);
  }
}

@Preview(name: 'root widget')
Widget previewRootWidget() {
  return WidgetRoot(
    entity: .container(
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
              args: .new(text: "test", color: .fromColor(Colors.white)),
            ),
          ),
        ),
      ),
    ),
  );
}
