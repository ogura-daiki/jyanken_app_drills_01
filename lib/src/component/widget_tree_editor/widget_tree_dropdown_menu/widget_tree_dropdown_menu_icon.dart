import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_item.dart';

class WidgetTreeDropdownMenuIcon extends StatelessWidget {
  final WidgetTreeDropdownMenuItem item;

  const WidgetTreeDropdownMenuIcon({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return switch (item) {
      .edit => Icon(Icons.edit_attributes),
      .delete => Icon(Icons.delete_forever),
      .change => Icon(Icons.merge_type),
    };
  }
}
