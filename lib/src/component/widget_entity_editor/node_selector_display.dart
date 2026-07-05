import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';

class NodeSelectorDisplay extends StatelessWidget {
  final List<WidgetChildSelector> selector;
  final EdgeInsets padding;
  static const height = 20.0;

  const NodeSelectorDisplay({
    super.key,
    required this.selector,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: padding,
        scrollDirection: .horizontal,
        itemCount: selector.length,
        itemBuilder: (context, index) {
          final s = selector[index];
          return SizedBox(
            height: height,
            child: Center(child: Text("${s.arg.name}  ${s.entityId.value}")),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: height,
          child: Center(child: Icon(Icons.arrow_right, size: height)),
        ),
      ),
    );
  }
}
