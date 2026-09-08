import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_wrapper.dart';

abstract class ParseTreeNodeSelectorUsecase {
  Result<WidgetEntity> execute({
    required List<WidgetChildSelector> selector,
    required WidgetEntity? treeRoot,
  });
}

class WidgetEntityNotFoundException implements Exception {
  final List<WidgetChildSelector> selector;

  WidgetEntityNotFoundException([this.selector = const []]);
  @override
  String toString() {
    return "指定のWidgetが見つかりませんでした${selector.map((s) => "${s.arg} ${s.entityId}").join(".")}";
  }
}

class ParseTreeNodeSelectorUsecaseImpl implements ParseTreeNodeSelectorUsecase {
  @override
  Result<WidgetEntity> execute({
    required List<WidgetChildSelector> selector,
    required WidgetEntity? treeRoot,
  }) {
    if (treeRoot == null) {
      return .failure(WidgetEntityNotFoundException(selector));
    }
    var cursor = treeRoot;
    for (final s in selector) {
      final wrapper = cursor.toWrapper();
      final value = wrapper.get(s.arg).getOrThrow(null);
      if (value.rawValue == null) {
        return .failure(WidgetEntityNotFoundException(selector));
      }
      try {
        cursor = switch (value) {
          VariableTypeWidget w => w.getChild(s.entityId).getOrThrow(null),
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
