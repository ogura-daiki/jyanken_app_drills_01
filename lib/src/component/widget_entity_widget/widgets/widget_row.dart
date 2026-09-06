import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetRow extends StatelessWidget {
  final WidgetEntityRow entity;

  const WidgetRow({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: entity.args.spacing,
      mainAxisAlignment: entity.args.mainAxisAlignment,
      mainAxisSize: entity.args.mainAxisSize,
      crossAxisAlignment: entity.args.crossAxisAlignment,
      children: entity.args.children
          .map((we) => WidgetEntityWidget(entity: we))
          .toList(),
    );
  }
}
