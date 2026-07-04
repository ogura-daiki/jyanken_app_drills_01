import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class SelectionNode {
  final WidgetEntity entity;
  final List<TreeNodeSelector> selector;
  final void Function(WidgetEntity? newEntity) onChange;

  SelectionNode({
    required this.entity,
    required this.selector,
    required this.onChange,
  });

  @override
  int get hashCode => entity.id;

  @override
  bool operator ==(Object other) {
    if (other is! SelectionNode) return false;
    return other.entity.id == entity.id;
  }
}
