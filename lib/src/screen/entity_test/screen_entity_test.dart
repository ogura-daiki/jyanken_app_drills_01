import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';

class ScreenEntityTest extends StatelessWidget {
  const ScreenEntityTest({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterEditor(
      projectId: "FREE_PLAY",
      allowTypes: WidgetType.findByCategories({.common}).toSet(),
    );
  }
}
