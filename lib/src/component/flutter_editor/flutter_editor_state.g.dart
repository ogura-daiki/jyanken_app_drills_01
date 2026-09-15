// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_editor_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlutterEditorState _$FlutterEditorStateFromJson(Map<String, dynamic> json) =>
    _FlutterEditorState(
      projectId: ProjectId.fromJson(json['projectId'] as Map<String, dynamic>),
      treeRoot: WidgetEntityRoot.fromJson(
        json['treeRoot'] as Map<String, dynamic>,
      ),
      selection: (json['selection'] as List<dynamic>)
          .map((e) => WidgetChildSelector.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FlutterEditorStateToJson(_FlutterEditorState instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'treeRoot': instance.treeRoot,
      'selection': instance.selection,
    };
