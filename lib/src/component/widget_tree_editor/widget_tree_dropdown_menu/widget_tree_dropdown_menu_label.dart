import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_item.dart';

class WidgetTreeDropdownMenuLabel extends StatelessWidget {
  final WidgetTreeDropdownMenuItem item;

  const WidgetTreeDropdownMenuLabel({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final text = switch (item) {
      .edit => "編集",
      .delete => "削除",
      .change => "別ウィジェットに変換",
    };
    return Text(text, overflow: .ellipsis);
  }
}
