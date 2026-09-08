import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_icon.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_label.dart';
import 'package:jyanken_app_drills/src/component/widget_type_icon.dart';
import 'package:jyanken_app_drills/src/core/line_height_ext.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree_action/widget_tree_action_type.dart';

class WidgetTreeHeader extends HookWidget {
  final int depth;
  final WidgetType type;
  final void Function() onSelect;
  final void Function() onRemove;

  const WidgetTreeHeader({
    super.key,
    required this.depth,
    required this.type,
    required this.onSelect,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final showDropDown = useState(false);
    final focusNode = useFocusNode();
    return TapRegion(
      consumeOutsideTaps: false,
      onTapOutside: (_) {
        showDropDown.value = false;
      },
      child: InkWell(
        focusNode: focusNode,
        onFocusChange: (value) {
          showDropDown.value = value;
        },
        onHover: (value) {
          showDropDown.value = focusNode.hasFocus || value;
        },
        onTapDown: (details) {
          showDropDown.value = true;
        },
        onTap: onSelect,
        child: Padding(
          padding: .only(
            left: 8 + 8 * depth.toDouble(),
            right: 4,
            top: 0,
            bottom: 0,
          ),
          child: Row(
            mainAxisSize: .max,
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            spacing: 4,
            children: [
              WidgetTypeIcon(
                type: type,
                size: TextTheme.of(context).bodyMedium?.lineHeight(),
                color: ColorScheme.of(context).onSurface,
              ),
              Expanded(
                child: Text(
                  type.name,
                  overflow: .ellipsis,
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorScheme.of(context).onSurface,
                  ),
                ),
              ),
              Opacity(
                opacity: showDropDown.value ? 1 : 0,
                child: IgnorePointer(
                  ignoring: !showDropDown.value,
                  child: PopupMenuButton(
                    position: .under,
                    itemBuilder: (context) => WidgetTreeActionType.values
                        .map(
                          (v) => PopupMenuItem(
                            value: v,
                            enabled: type.isAllowedAction(v),
                            child: Row(
                              spacing: 4,
                              children: [
                                WidgetTreeDropdownMenuIcon(item: v),
                                Expanded(
                                  child: WidgetTreeDropdownMenuLabel(item: v),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onSelected: (v) {
                      switch (v) {
                        case .editAttribute:
                          onSelect();
                        case .changeWidget:
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(v.name)));
                        case .remove:
                          onRemove();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
