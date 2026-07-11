import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action_type.dart';

class WidgetTreeDropdownMenuLabel extends StatelessWidget {
  final WidgetTreeActionType item;

  const WidgetTreeDropdownMenuLabel({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final text = switch (item) {
      .editAttribute => "編集",
      .remove => "削除",
      .changeWidget => "別ウィジェットに変換",
    };
    return Text(text, overflow: .ellipsis);
  }
}
