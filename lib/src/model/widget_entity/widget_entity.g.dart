// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetEntityContainer _$WidgetEntityContainerFromJson(
  Map<String, dynamic> json,
) => WidgetEntityContainer(
  id: WidgetEntityId.fromJson(json['id'] as Map<String, dynamic>),
  args: FixedContainerArgs.fromJson(json['args'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetEntityContainerToJson(
  WidgetEntityContainer instance,
) => <String, dynamic>{
  'id': instance.id,
  'args': instance.args,
  'runtimeType': instance.$type,
};

WidgetEntityText _$WidgetEntityTextFromJson(Map<String, dynamic> json) =>
    WidgetEntityText(
      id: WidgetEntityId.fromJson(json['id'] as Map<String, dynamic>),
      args: FixedTextArgs.fromJson(json['args'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityTextToJson(WidgetEntityText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'args': instance.args,
      'runtimeType': instance.$type,
    };

WidgetEntityColumn _$WidgetEntityColumnFromJson(Map<String, dynamic> json) =>
    WidgetEntityColumn(
      id: WidgetEntityId.fromJson(json['id'] as Map<String, dynamic>),
      args: FixedColumnArgs.fromJson(json['args'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityColumnToJson(WidgetEntityColumn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'args': instance.args,
      'runtimeType': instance.$type,
    };

WidgetEntityCenter _$WidgetEntityCenterFromJson(Map<String, dynamic> json) =>
    WidgetEntityCenter(
      id: WidgetEntityId.fromJson(json['id'] as Map<String, dynamic>),
      args: FixedCenterArgs.fromJson(json['args'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityCenterToJson(WidgetEntityCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'args': instance.args,
      'runtimeType': instance.$type,
    };
