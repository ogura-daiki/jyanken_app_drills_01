import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_center.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_text.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetEntityWidget extends StatelessWidget {
  final WidgetEntity entity;

  const WidgetEntityWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return switch (entity) {
      WidgetEntityText e => WidgetText(entity: e),
      WidgetEntityCenter e => WidgetCenter(entity: e),
    };
  }
}
