import 'package:jyanken_app_drills/src/model/widget_entity.dart';

int _id = 0;
int _getId() => _id++;

class SelectionNode {
  final int id;
  final WidgetEntity entity;
  final void Function(WidgetEntity? newEntity) onChange;

  SelectionNode({required this.entity, required this.onChange}) : id = _getId();

  @override
  int get hashCode => _id;

  @override
  bool operator ==(Object other) {
    if (other is! SelectionNode) return false;
    return other.id == id;
  }
}
