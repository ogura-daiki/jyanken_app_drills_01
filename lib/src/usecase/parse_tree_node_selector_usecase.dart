import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';

abstract class ParseTreeNodeSelectorUsecase {
  Result<WidgetEntity> execute({
    required List<TreeNodeSelector> selector,
    required WidgetEntity? treeRoot,
  });
}

class WidgetEntityNotFoundException implements Exception {
  final List<TreeNodeSelector> selector;

  WidgetEntityNotFoundException([this.selector = const []]);
  @override
  String toString() {
    return "指定のWidgetが見つかりませんでした${selector.map((s) => "${s.arg} ${s.entityId}").join(".")}";
  }
}

class ParseTreeNodeSelectorUsecaseImpl implements ParseTreeNodeSelectorUsecase {
  @override
  Result<WidgetEntity> execute({
    required List<TreeNodeSelector> selector,
    required WidgetEntity? treeRoot,
  }) {
    if (treeRoot == null) {
      return .failure(WidgetEntityNotFoundException(selector));
    }
    var cursor = treeRoot;
    for (final s in selector) {
      final wrapper = cursor.toWrapper();
      if (!wrapper.args.containsKey(s.arg)) {
        return .failure(WidgetEntityNotFoundException(selector));
      }
      final value = wrapper.args[s.arg]!;
      try {
        cursor = switch (value) {
          WidgetEntity we => we,
          List<WidgetEntity> list => list.singleWhere(
            (e) => e.id == s.entityId,
            orElse: () => throw WidgetEntityNotFoundException(selector),
          ),
          _ => throw UnimplementedError(
            "この型からはWidgetEntityを取得できません：${value.runtimeType.toString()}",
          ),
        };
      } catch (e) {
        if (e is WidgetEntityNotFoundException) {
          return .failure(e);
        }
        rethrow;
      }
    }
    return .success(cursor);
  }
}
