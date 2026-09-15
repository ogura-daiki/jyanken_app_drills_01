// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectIdTypeUserProject _$ProjectIdTypeUserProjectFromJson(
  Map<String, dynamic> json,
) => ProjectIdTypeUserProject(
  json['id'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ProjectIdTypeUserProjectToJson(
  ProjectIdTypeUserProject instance,
) => <String, dynamic>{'id': instance.id, 'runtimeType': instance.$type};

ProjectIdTypeQuestion _$ProjectIdTypeQuestionFromJson(
  Map<String, dynamic> json,
) => ProjectIdTypeQuestion(
  json['questionId'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ProjectIdTypeQuestionToJson(
  ProjectIdTypeQuestion instance,
) => <String, dynamic>{
  'questionId': instance.questionId,
  'runtimeType': instance.$type,
};
