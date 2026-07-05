import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/core/line_height_ext.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';

class WidgetSelectorDisplay extends StatelessWidget {
  final List<WidgetChildSelector> selector;
  final EdgeInsets padding;
  final void Function(List<WidgetChildSelector> selector) onSelect;

  static const TextStyle defaultStyle = .new(fontSize: 18, height: 1.3);

  const WidgetSelectorDisplay({
    super.key,
    required this.selector,
    required this.padding,
    required this.onSelect,
  });

  static const String rootLabel = "Root";
  String _buildLabel(WidgetChildSelector selector) =>
      "${selector.arg.name}[#${selector.entityId.value}]";

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge ?? defaultStyle;
    final height = textStyle.lineHeight();

    return SizedBox(
      height: height * 2,
      child: ListView.separated(
        padding: padding,
        scrollDirection: .horizontal,
        itemCount: selector.length + 1,
        itemBuilder: (context, index) {
          final label = switch (index) {
            0 => rootLabel,
            _ => _buildLabel(selector[index - 1]),
          };
          return ActionChip(
            label: Text(label, style: textStyle),
            onPressed: () {
              onSelect(selector.sublist(0, index));
            },
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: height,
          child: Center(child: Icon(Icons.arrow_right, size: height)),
        ),
      ),
    );
  }
}
