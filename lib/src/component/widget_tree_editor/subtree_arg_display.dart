import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_colored_material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_drop_zone.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree_action/widget_tree_action.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';

class SubtreeArgDisplay extends StatelessWidget {
  final List<WidgetChildSelector> selector;
  final WidgetArgument argEntry;
  final void Function(WidgetArgument newEntry) onAppend;
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
    final argValue = argEntry.value;
    if (argValue is! VariableTypeWidget) {
      return Text(
        "子要素はありません",
        style: .new(color: ColorScheme.of(context).error),
      );
    }
    final children = argValue.children;
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      children: [
        Padding(
          padding: .only(
            left: 16 + 8.0 * selector.length,
            right: 8,
            top: 1,
            bottom: 1,
          ),
          child: Text(
            argEntry.definition.name,
            style: TextTheme.of(
              context,
            ).bodySmall?.copyWith(color: ColorScheme.of(context).onSurface),
          ),
        ),
        ...children.map(
          (we) => WidgetTreeEditor(
            selector: [
              ...selector,
              .new(arg: argEntry.definition, entityId: we.id),
            ],
            entity: we,
            onAction: onAction,
            onSelection: onSelection,
          ),
        ),
        if (argValue.canAppendChild)
          DepthColoredMaterial(
            depth: selector.length + 1,
            child: WidgetTreeDropZone(
              onDrop: (type) {
                onAppend(
                  argEntry.copyWith(
                    value: argValue.copyWithAppend(.fromType(type)),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
