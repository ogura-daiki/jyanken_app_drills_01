import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_icon.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_item.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_label.dart';
import 'package:jyanken_app_drills/src/component/widget_type_icon.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';

class WidgetTreeHeader extends HookWidget {
  final int depth;
  final WidgetType type;
  final void Function() onSelect;
  final void Function() onDelete;

  const WidgetTreeHeader({
    super.key,
    required this.depth,
    required this.type,
    required this.onSelect,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final showDropDown = useState(false);
    final focusNode = useFocusNode();
    return InkWell(
      focusNode: focusNode,
      onFocusChange: (value) {
        showDropDown.value = value;
      },
      onHover: (value) {
        showDropDown.value = focusNode.hasFocus || value;
      },
      onTap: onSelect,
      child: Padding(
        padding: .only(
          left: 8 + 8 * depth.toDouble(),
          right: 4,
          top: 4,
          bottom: 4,
        ),
        child: Row(
          mainAxisSize: .max,
          mainAxisAlignment: .start,
          crossAxisAlignment: .center,
          spacing: 4,
          children: [
            WidgetTypeIcon(type: type),
            Expanded(child: Text(type.name, overflow: .ellipsis)),
            Opacity(
              opacity: showDropDown.value ? 1 : 0,
              child: IgnorePointer(
                ignoring: !showDropDown.value,
                child: PopupMenuButton(
                  position: .under,
                  itemBuilder: (context) => WidgetTreeDropdownMenuItem.values
                      .map(
                        (v) => PopupMenuItem(
                          value: v,
                          enabled: type.widgetTreeMenuEnable(v),
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
                      case .edit:
                        onSelect();
                      case .change:
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(v.name)));
                      case .delete:
                        onDelete();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
