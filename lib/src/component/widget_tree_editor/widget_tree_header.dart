import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/widget_type_icon.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_type.dart';

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
    final showDeleteButton = useState(false);
    final focusNode = useFocusNode();
    return InkWell(
      focusNode: focusNode,
      onFocusChange: (value) {
        showDeleteButton.value = value;
      },
      onHover: (value) {
        showDeleteButton.value = focusNode.hasFocus || value;
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
              opacity: showDeleteButton.value ? 1 : 0,
              child: IgnorePointer(
                ignoring: !showDeleteButton.value,
                child: IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.delete_forever),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
