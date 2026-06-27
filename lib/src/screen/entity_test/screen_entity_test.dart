import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';

class ScreenEntityTest extends StatelessWidget {
  const ScreenEntityTest({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetEntityWidget(
      entity: .column(
        crossAxisAlignment: .center,
        children: [
          .text(text: "テスト1"),
          .text(text: "テスト2"),
          .text(text: "テスト3"),
          .text(text: "テスト4"),
          .text(text: "テスト5"),
        ],
      ),
    );
  }
}
