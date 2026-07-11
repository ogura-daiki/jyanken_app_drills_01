import 'package:get_it/get_it.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_state.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action_reject_reason.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_editor_viewmodel.g.dart';

@riverpod
class FlutterEditorViewmodel extends _$FlutterEditorViewmodel {
  ParseTreeNodeSelectorUsecase get _getWidget =>
      GetIt.I.get<ParseTreeNodeSelectorUsecase>();
  @override
  FlutterEditorState build(int id) {
    return FlutterEditorState(
      editorId: id,
      treeRoot: WidgetEntityRoot(id: .create(), args: .new()),
      selection: [],
    );
  }

  Result<WidgetEntity> getSelectedWidget() {
    return _getWidget.execute(
      selector: state.selection,
      treeRoot: state.treeRoot,
    );
  }

  void updateSelection(List<WidgetChildSelector> selector) {
    state = state.copyWith(selection: selector);
  }

  Result onAction(WidgetTreeAction action) {
    final stack = <WidgetEntity>[state.treeRoot];

    //最上位からセレクタの通りにたどっていってターゲットの要素にたどり着くか確認
    final selectorHistory = <WidgetChildSelector>[];
    for (final selector in action.selector) {
      selectorHistory.add(selector);
      final ex = WidgetEntityNotFoundException(selectorHistory);

      try {
        final cursor = stack.last.toWrapper();
        final next = cursor.getChildOrThrow(selector: selector, throws: ex);
        stack.add(next);
      } catch (e) {
        if (e is WidgetEntityNotFoundException) {
          return .failure(e);
        }
        rethrow;
      }
    }
    if (action.selector.isNotEmpty &&
        stack.last.id != action.selector.last.entityId) {
      return .failure(WidgetEntityNotFoundException(action.selector));
    }

    late WidgetEntity updated;

    final target = stack.lastOrNull;
    if (target != null) {
      stack.removeLast();
      //ターゲットが存在するがこのアクションは許可されていない
      if (!target.type.isAllowedAction(action.actionType)) {
        return .failure(
          WidgetTreeActionRejectException(
            reason: .actionNotAllowed,
            id: target.id,
            type: target.type,
          ),
        );
      }
    }

    //アクションを実行
    switch (action) {
      case WidgetTreeActionUpdate action:
        {
          updated = action.newValue;
          if (stack.isNotEmpty) stack.removeLast();
        }
      case WidgetTreeActionRemove():
        {
          final parent = stack.removeLast();
          //parentからselfを見るためのselector
          final selector = selectorHistory.removeLast();
          final wrapper = parent.toWrapper();
          updated = wrapper
              .putWith(
                arg: selector.arg,
                value: wrapper
                    .getEntry(selector.arg)
                    .getOrThrow(null)
                    .copyWithRemoveId(selector.entityId)
                    .value,
              )
              .toEntity();
        }
    }

    //子の変更を親に反映していく
    for (final selector in selectorHistory.reversed) {
      final parent = stack.removeLast();
      //print("parent: ${parent.id}, ${jsonEncode(selector.toJson())}");
      final targetEntry = parent
          .toWrapper()
          .getEntry(selector.arg)
          .getOrThrow(
            WidgetEntityNotFoundException([
              .new(arg: selector.arg, entityId: selector.entityId),
            ]),
          );
      final newEntry = targetEntry.copyWithUpdateWidget(newEntity: updated);
      updated = parent.toWrapper().putWithEntry(newEntry).toEntity();
    }

    if (updated is! WidgetEntityRoot) {
      throw StateError("ツリーの最上層がWidgetRootEntity以外です");
    }
    state = state.copyWith(treeRoot: updated);
    return .success(null);
  }
}
