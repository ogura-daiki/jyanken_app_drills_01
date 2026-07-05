import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
part 'flutter_editor_state.freezed.dart';
part 'flutter_editor_state.g.dart';

@freezed
abstract class FlutterEditorState with _$FlutterEditorState {
  const FlutterEditorState._();
  const factory FlutterEditorState({
    required int editorId,
    required WidgetEntityRoot treeRoot,
    required List<WidgetChildSelector> selection,
  }) = _FlutterEditorState;

  factory FlutterEditorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterEditorStateFromJson(json);
}
