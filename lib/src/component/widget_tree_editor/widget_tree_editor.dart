import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_colored_material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/subtree_arg_display.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_header.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';

class WidgetTreeEditor extends StatelessWidget {
  final List<WidgetChildSelector> selector;
  final WidgetEntity entity;
  final void Function(WidgetTreeAction action) onAction;
  final void Function(List<WidgetChildSelector> selector) onSelection;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onAction,
    required this.onSelection,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    final depth = selector.length;
    final wrapper = entity.toWrapper();
    final subTree = wrapper.subtree;

    return DepthColoredMaterial(
      depth: depth,
      child: Column(
        crossAxisAlignment: .stretch,
        mainAxisSize: .min,
        mainAxisAlignment: .start,
        children: [
          WidgetTreeHeader(
            depth: depth,
            type: entity.type,
            onSelect: () {
              onSelection(selector);
            },
            onDelete: () {
              onAction(.remove(selector: selector));
            },
          ),
          ...subTree.map((e) {
            return SubtreeArgDisplay(
              argEntry: e,
              selector: selector,
              onAction: onAction,
              onSelection: onSelection,
              onAppend: (newEntry) {
                onAction(
                  .update(
                    selector: selector,
                    oldValue: entity,
                    newValue: wrapper
                        .putWith(
                          arg: newEntry.key as WidgetArg,
                          value: newEntry.value,
                        )
                        .toEntity(),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
