import 'dart:developer' as dev;

import 'package:get_it/get_it.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_state.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree_action/widget_tree_action.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree_action/widget_tree_action_reject_reason.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_wrapper.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_editor_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class FlutterEditorViewmodel extends _$FlutterEditorViewmodel {
  ParseTreeNodeSelectorUsecase get _getWidget =>
      GetIt.I.get<ParseTreeNodeSelectorUsecase>();
  @override
  FlutterEditorState build(ProjectId id) {
    return FlutterEditorState(
      projectId: id,
      treeRoot: id.projectRoot,
      selection: [],
    );
  }

  Result<WidgetEntity, Exception> getSelectedWidget() {
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
                    .value
                    .requireType<VariableTypeWidget>()
                    .copyWithRemoveId(selector.entityId)
                    .rawValue,
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
      final newEntry = targetEntry.value
          .requireType<VariableTypeWidget>()
          .copyWithUpdateWidget(newEntity: updated)
          .let((v) => targetEntry.copyWith(value: v));
      updated = parent.toWrapper().putWithEntry(newEntry).toEntity();
    }

    if (updated is! WidgetEntityRoot) {
      throw StateError("ツリーの最上層がWidgetRootEntity以外です");
    }
    state = state.copyWith(treeRoot: updated);
    return .success(null);
  }

  Result<VariableValue, Exception> getScopeVariable({
    required List<WidgetChildSelector> from,
    required String name,
  }) {
    final selector = [...from];
    try {
      while (selector.isNotEmpty) {
        selector.removeLast();
        final entity = _getWidget
            .execute(selector: selector, treeRoot: state.treeRoot)
            .getOrThrow(null);
        if (entity is! WidgetEntityScope) continue;

        final index = entity.args.variables.variables.indexWhere(
          (e) => e.name == name,
        );
        if (index < 0) continue;
        return .success(entity.args.variables.variables[index].value);
      }
    } catch (e) {
      dev.log("[getScopeVariable] :$e");
    }
    return .failure(Exception("変数名：$name を取得できませんでした。Scopeの設定を確認してください。"));
  }

  void setScopeVariable({
    required List<WidgetChildSelector> from,
    required String name,
    required VariableValue newValue,
  }) {
    final selector = [...from];
    try {
      while (selector.isNotEmpty) {
        selector.removeLast();
        final entity = _getWidget
            .execute(selector: selector, treeRoot: state.treeRoot)
            .getOrThrow(null);
        if (entity is! WidgetEntityScope) continue;

        final index = entity.args.variables.variables.indexWhere(
          (e) => e.name == name,
        );
        if (index < 0) continue;
        final target = entity.args.variables.variables[index].value;
        if (target.toEnum() != newValue.toEnum()) {
          //TODO: 暫定エラーメッセージ
          throw Exception("変数の型と書き込もうとしている値の型が違います");
        }

        final newVariables = [...entity.args.variables.variables];
        newVariables[index] = newVariables[index].copyWith(value: newValue);

        onAction(
          .update(
            selector: selector,
            oldValue: entity,
            newValue: entity.copyWith.args.variables(variables: newVariables),
          ),
        );
      }
    } catch (e) {
      dev.log("[getScopeVariable] :$e");
    }
  }
}
