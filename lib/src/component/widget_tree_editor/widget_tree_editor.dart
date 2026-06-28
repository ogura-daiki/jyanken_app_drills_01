import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_colored_material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/selection_node.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_drop_zone.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_header.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetTreeEditor extends StatelessWidget {
  final int depth;
  final WidgetEntity? entity;
  final void Function(WidgetEntity? newEntity) onChange;
  final void Function(SelectionNode selection) onSelection;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onChange,
    required this.onSelection,
    this.depth = 0,
  });

  @override
  Widget build(BuildContext context) {
    final entity = this.entity;
    if (entity == null) {
      return DepthColoredMaterial(
        depth: depth,
        child: WidgetTreeDropZone(
          onDrop: (type) {
            onChange(WidgetEntity.fromType(type));
          },
        ),
      );
    }
    final wrapper = entity.toWrapper();
    final subTree = wrapper.args.entries.where((e) => e.key.type.hasChild);

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
              onSelection(.new(entity: entity, onChange: onChange));
            },
            onDelete: () {
              onChange(null);
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
                    left: 16 + 8 * depth.toDouble(),
                    right: 8,
                    top: 4,
                    bottom: 0,
                  ),
                  child: Text(e.key.name),
                ),
                ...switch (e.key.type) {
                  .widget => [
                    switch (e.value) {
                      WidgetEntity we => WidgetTreeEditor(
                        depth: depth + 1,
                        entity: we,
                        onSelection: onSelection,
                        onChange: (newEntity) {
                          final newArgs = {...wrapper.args};
                          newArgs[e.key] = newEntity;
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                      ),
                      _ => DepthColoredMaterial(
                        depth: depth + 1,
                        child: WidgetTreeDropZone(
                          onDrop: (type) {
                            final newArgs = {...wrapper.args};

                            newArgs[e.key] = WidgetEntity.fromType(type);
                            onChange(
                              WidgetEntity.fromArgsWrapper(
                                wrapper.copyWith(args: newArgs),
                              ),
                            );
                          },
                        ),
                      ),
                    },
                  ],
                  .widgetList => [
                    ...(e.value as List<WidgetEntity>).indexed.map((entry) {
                      final idx = entry.$1;
                      final we = entry.$2;
                      return WidgetTreeEditor(
                        depth: depth + 1,
                        entity: we,
                        onSelection: (selection) {
                          onSelection(selection);
                        },
                        onChange: (newEntity) {
                          final newArgs = {...wrapper.args};
                          List<WidgetEntity?> newList = [...newArgs[e.key]];
                          newList[idx] = newEntity;
                          newArgs[e.key] = newList
                              .whereType<WidgetEntity>()
                              .toList();
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
                            ),
                          );
                        },
                      );
                    }),
                    DepthColoredMaterial(
                      depth: depth + 1,
                      child: WidgetTreeDropZone(
                        onDrop: (type) {
                          final newArgs = {...wrapper.args};
                          List<WidgetEntity?> newList = [...newArgs[e.key]];
                          newList.add(.fromType(type));
                          newArgs[e.key] = newList
                              .whereType<WidgetEntity>()
                              .toList();
                          onChange(
                            WidgetEntity.fromArgsWrapper(
                              wrapper.copyWith(args: newArgs),
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
