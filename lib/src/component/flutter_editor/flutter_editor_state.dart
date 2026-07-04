import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
part 'flutter_editor_state.freezed.dart';
part 'flutter_editor_state.g.dart';

@freezed
abstract class FlutterEditorState with _$FlutterEditorState {
  const FlutterEditorState._();
  const factory FlutterEditorState({
    required int editorId,
    required WidgetEntity? treeRoot,
    required List<TreeNodeSelector> selection,
  }) = _FlutterEditorState;

  factory FlutterEditorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterEditorStateFromJson(json);
}
