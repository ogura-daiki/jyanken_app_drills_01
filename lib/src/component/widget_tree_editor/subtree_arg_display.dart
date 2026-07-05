import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_colored_material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_drop_zone.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';

class SubtreeArgDisplay extends StatelessWidget {
  final List<WidgetChildSelector> selector;
  final MapEntry<CanHaveChildArg, dynamic> argEntry;
  final void Function(MapEntry<CanHaveChildArg, dynamic> newEntry) onAppend;
  final void Function(WidgetTreeAction action) onAction;
  final void Function(List<WidgetChildSelector> selector) onSelection;

  const SubtreeArgDisplay({
    super.key,
    required this.argEntry,
    required this.selector,
    required this.onAppend,
    required this.onAction,
    required this.onSelection,
  });

  @override
  Widget build(BuildContext context) {
    final children = argEntry.children;
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      children: [
        Padding(
          padding: .only(
            left: 16 + 8.0 * selector.length,
            right: 8,
            top: 4,
            bottom: 0,
          ),
          child: Text(argEntry.key.name),
        ),
        ...children.map(
          (we) => WidgetTreeEditor(
            selector: [
              ...selector,
              .new(arg: argEntry.key, entityId: we.id),
            ],
            entity: we,
            onAction: onAction,
            onSelection: onSelection,
          ),
        ),
        if (argEntry.canAppendChild)
          DepthColoredMaterial(
            depth: selector.length + 1,
            child: WidgetTreeDropZone(
              onDrop: (type) {
                onAppend(argEntry.copyWithAppend(.fromType(type)));
              },
            ),
          ),
      ],
    );
  }
}
