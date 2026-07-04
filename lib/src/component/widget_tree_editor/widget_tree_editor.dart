import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_colored_material.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_drop_zone.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_header.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';

class WidgetTreeEditor extends StatelessWidget {
  final List<TreeNodeSelector> selector;
  final WidgetEntity entity;
  final void Function(WidgetTreeAction action) onAction;
  final void Function(List<TreeNodeSelector> selector) onSelection;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onAction,
    required this.onSelection,
    this.selector = const [],
  });

  @override
  Widget build(BuildContext context) {
    final depth = selector.length;
    final wrapper = entity.toWrapper();
    final subTree = wrapper.args.entries.where((e) => e.key.canHaveWidget);

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
            return Column(
              crossAxisAlignment: .stretch,
              mainAxisSize: .min,
              mainAxisAlignment: .start,
              children: [
                Padding(
                  padding: .only(
                    left: 16 + 8.0 * depth,
                    right: 8,
                    top: 4,
                    bottom: 0,
                  ),
                  child: Text(e.key.name),
                ),
                ...switch (e.key) {
                  WidgetArgWidget() => [
                    switch (e.value) {
                      WidgetEntity we => WidgetTreeEditor(
                        selector: [
                          ...selector,
                          if (e.value != null)
                            .new(arg: e.key, entityId: e.value.id),
                        ],
                        entity: we,
                        onSelection: onSelection,
                        onAction: onAction,
                      ),
                      _ => DepthColoredMaterial(
                        depth: depth + 1,
                        child: WidgetTreeDropZone(
                          onDrop: (type) {
                            final newArgs = {...wrapper.args};
                            newArgs[e.key] = WidgetEntity.fromType(type);
                            final newEntity = WidgetEntity.fromWrapper(
                              wrapper.copyWith(args: newArgs),
                            );
                            onAction(
                              .update(
                                selector: selector,
                                oldValue: entity,
                                newValue: newEntity,
                              ),
                            );
                          },
                        ),
                      ),
                    },
                  ],
                  WidgetArgWidgetList() => [
                    ...(e.value as List<WidgetEntity>).indexed.map((entry) {
                      final we = entry.$2;
                      return WidgetTreeEditor(
                        selector: [
                          ...selector,
                          .new(arg: e.key, entityId: we.id),
                        ],
                        entity: we,
                        onSelection: onSelection,
                        onAction: onAction,
                      );
                    }),
                    DepthColoredMaterial(
                      depth: depth + 1,
                      child: WidgetTreeDropZone(
                        onDrop: (type) {
                          var newList =
                              (wrapper.args[e.key] as List<WidgetEntity>)
                                  .toList();
                          newList.add(.fromType(type));
                          final newArgs = {...wrapper.args};
                          newArgs[e.key] = newList;
                          final newEntity = WidgetEntity.fromWrapper(
                            wrapper.copyWith(args: newArgs),
                          );
                          onAction(
                            .update(
                              selector: selector,
                              oldValue: entity,
                              newValue: newEntity,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                  _ => [Text("空")],
                },
              ],
            );
          }),
        ],
      ),
    );
  }
}
