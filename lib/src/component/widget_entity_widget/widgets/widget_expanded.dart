import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetExpanded extends StatelessWidget {
  final WidgetEntityExpanded entity;

  const WidgetExpanded({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: entity.args.flex,
      child: WidgetEntityWidget(entity: entity.args.child),
    );
  }
}
