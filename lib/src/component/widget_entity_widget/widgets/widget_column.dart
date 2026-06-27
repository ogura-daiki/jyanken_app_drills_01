import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetColumn extends StatelessWidget {
  final WidgetEntityColumn entity;

  const WidgetColumn({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: entity.args.crossAxisAlignment,
      children: entity.args.children
          .map((we) => WidgetEntityWidget(entity: we))
          .toList(),
    );
  }
}
