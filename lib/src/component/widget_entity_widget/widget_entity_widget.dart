import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_center.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_column.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_container.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_text.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetEntityWidget extends StatelessWidget {
  final WidgetEntity? entity;

  const WidgetEntityWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {

    ErrorWidget.builder = (details) {
      final error = details.exception;
      return Text("エラーが発生\n$error");
    };
    return switch (entity) {
      null => const Offstage(),
      WidgetEntity we => switch (we) {
        WidgetEntityContainer e => WidgetContainer(entity: e),
        WidgetEntityText e => WidgetText(entity: e),
        WidgetEntityColumn e => WidgetColumn(entity: e),
        WidgetEntityCenter e => WidgetCenter(entity: e),
      },
    };
  }
}
