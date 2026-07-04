import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_state.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action.dart';
import 'package:jyanken_app_drills/src/usecase/get_widget_entity_argument_value_usecase.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_editor_viewmodel.g.dart';

@riverpod
class FlutterEditorViewmodel extends _$FlutterEditorViewmodel {
  ParseTreeNodeSelectorUsecase get _getWidget =>
      GetIt.I.get<ParseTreeNodeSelectorUsecase>();
  GetWidgetEntityArgumentValueUsecase get _getArgValue =>
      GetIt.I.get<GetWidgetEntityArgumentValueUsecase>();

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
      cursor = stack.lastOrNull;
      final selector = action.selector[index];
      selectorHistory.add(selector);

      final currentException = WidgetEntityNotFoundException(selectorHistory);
      if (cursor == null || !selector.arg.canHaveWidget) {
        return .failure(currentException);
      }
      try {
        final next = switch (selector.arg) {
          WidgetArgWidget wa =>
            _getArgValue
                .execute<WidgetEntity?>(arg: wa, entity: cursor)
                .getOrThrow(currentException),
          WidgetArgWidgetList wla =>
            _getArgValue
                .execute<List<WidgetEntity>>(arg: wla, entity: cursor)
                .getOrThrow(currentException)
                .where((w) => w.id == selector.entityId)
                .firstOrNull,
          _ => throw currentException,
        };

        if (next == null) {
          throw currentException;
        }
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
          if (stack.length <= 1) {
            updated = null;
            break;
          }
          //自分を捨てる
          stack.removeLast();
          final parent = stack.removeLast();

          final wrapper = parent.toWrapper();
          final newArgs = {...wrapper.args};
          final selector = selectorHistory.removeLast();
          if (selector.arg is WidgetArgWidget) {
            newArgs[selector.arg] = null;
          } else if (selector.arg is WidgetArgWidgetList) {
            final newList = <WidgetEntity>[...newArgs[selector.arg] ?? []];
            newList.removeWhere((e) => e.id == selector.entityId);
            newArgs[selector.arg] = newList;
          } else {
            throw UnsupportedError("Widget以外をRemoveできません");
          }
          updated = .fromWrapper(wrapper.copyWith(args: newArgs));
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
