import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';

class ScreenEntityTest extends StatelessWidget {
  const ScreenEntityTest({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetEntityWidget(
      entity: .center(child: .text(text: "テストテキスト")),
    );
  }
}
