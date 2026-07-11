import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action_type.dart';

class WidgetTreeDropdownMenuIcon extends StatelessWidget {
  final WidgetTreeActionType item;

  const WidgetTreeDropdownMenuIcon({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return switch (item) {
      .editAttribute => Icon(Icons.edit_attributes),
      .remove => Icon(Icons.delete_forever),
      .changeWidget => Icon(Icons.merge_type),
    };
  }
}
