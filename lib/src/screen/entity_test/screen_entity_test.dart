import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/widget_entity_editor.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class ScreenEntityTest extends StatefulWidget {
  const ScreenEntityTest({super.key});

  @override
  State<ScreenEntityTest> createState() => _ScreenEntityTestState();
}

class _ScreenEntityTestState extends State<ScreenEntityTest> {
  late final ValueNotifier<WidgetEntity?> tree;

  @override
  void initState() {
    tree = ValueNotifier(
      .column(
        args: .new(
          crossAxisAlignment: .center,
          children: [
            .text(args: .new(text: "テスト1")),
            .text(args: .new(text: "テスト2")),
            .text(args: .new(text: "テスト3")),
            .text(args: .new(text: "テスト4")),
            .text(args: .new(text: "テスト5")),
          ],
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .stretch,
      mainAxisSize: .max,
      children: [
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: tree,
            builder: (context, value, child) {
              if (value == null) {
                return Center(child: Text("ウィジェットがありません"));
              }
              return WidgetEntityEditor(
                entity: value,
                onChange: (newValue) {
                  tree.value = newValue;
                },
              );
            },
          ),
        ),
        Padding(
          padding: const .all(16),
          child: AspectRatio(
            aspectRatio: 9 / 19,
            child: Material(
              elevation: 4,
              clipBehavior: .antiAliasWithSaveLayer,
              child: ValueListenableBuilder(
                valueListenable: tree,
                builder: (context, value, child) {
                  return WidgetEntityWidget(entity: value);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
