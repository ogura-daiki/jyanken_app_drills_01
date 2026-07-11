import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class WidgetAlign extends StatelessWidget {
  final WidgetEntityAlign entity;

  const WidgetAlign({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: entity.args.alignment.value,
      child: WidgetEntityWidget(entity: entity.args.child),
    );
  }
}
