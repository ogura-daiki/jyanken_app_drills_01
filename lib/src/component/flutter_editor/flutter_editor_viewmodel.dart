import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_state.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_editor_viewmodel.g.dart';

@riverpod
class FlutterEditorViewmodel extends _$FlutterEditorViewmodel {
  ParseTreeNodeSelectorUsecase get _getWidget =>
      GetIt.I.get<ParseTreeNodeSelectorUsecase>();
  @override
  FlutterEditorState build(int id) {
    return FlutterEditorState(editorId: id, treeRoot: null, selection: []);
  }

  void updateTree(WidgetEntity? treeRoot) {
    state = state.copyWith(treeRoot: treeRoot);
  }

  Result<WidgetEntity> getSelectedWidget() {
    return _getWidget.execute(
      selector: state.selection,
      treeRoot: state.treeRoot,
    );
  }

  void updateSelection(List<TreeNodeSelector> selector) {
    state = state.copyWith(selection: selector);
  }

  Result onAction(WidgetTreeAction action) {
    final stack = <WidgetEntity>[];
    var cursor = state.treeRoot;
    if (cursor != null) {
      stack.add(cursor);
    }

    final selectorHistory = <TreeNodeSelector>[];
    for (int index = 0; index < action.selector.length; index++) {
      final selector = action.selector[index];
      selectorHistory.add(selector);
      final currentException = WidgetEntityNotFoundException(selectorHistory);

      try {
        cursor = stack.lastOrNull;
        if (cursor == null) {
          return .failure(currentException);
        }

        final next = cursor
            .toWrapper()
            .getEntry(selector.arg)
            .getOrThrow(null)
            .children
            .singleWhere(
              (we) => we.id == selector.entityId,
              orElse: () => throw currentException,
            );

        stack.add(next);
      } catch (e) {
        switch (e) {
          case WidgetEntityNotFoundException e:
            return .failure(e);
          default:
            rethrow;
        }
      }
    }

    late WidgetEntity? updated;

    switch (action) {
      case WidgetTreeActionUpdate action:
        {
          updated = action.newValue;
          if (stack.isNotEmpty) stack.removeLast();
        }
      case WidgetTreeActionRemove():
        {
          //TODO: Root要素を作成して番兵を立てておく
          if (stack.length <= 1) {
            updated = null;
            break;
          }
          //自分を捨てる
          stack.removeLast();
          final parent = stack.removeLast();

          final wrapper = parent.toWrapper();
          final selector = selectorHistory.removeLast();
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

    for (final selector in selectorHistory.reversed) {
      if (updated == null) {
        throw Exception("ステートがおかしいと思う");
      }
      final parent = stack.removeLast();
      print("parent: ${parent.id}, ${jsonEncode(selector.toJson())}");
      final wrapper = parent.toWrapper();
      final newArgs = {...wrapper.args};
      if (selector.arg is WidgetArgWidget) {
        newArgs[selector.arg] = updated;
      } else if (selector.arg is WidgetArgWidgetList) {
        final newList = <WidgetEntity>[...wrapper.args[selector.arg]];
        final index = newList.indexWhere((e) => e.id == selector.entityId);
        newList[index] = updated;
        newArgs[selector.arg] = newList;
      } else {
        throw UnsupportedError("このタイプの編集をまだサポートしていません");
      }

      updated = .fromWrapper(wrapper.copyWith(args: newArgs));
    }

    updateTree(updated);
    return .success(null);
  }
}
