import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';

class ScreenEditor extends StatelessWidget {
  final String id;

  const ScreenEditor({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: FlutterEditor(
        allowTypes: WidgetType.findByCategories({.common}).toSet(),
        projectId: id,
      ),
    );
  }
}
