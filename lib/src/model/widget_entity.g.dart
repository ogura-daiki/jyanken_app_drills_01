// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetEntityText _$WidgetEntityTextFromJson(Map<String, dynamic> json) =>
    WidgetEntityText(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityTextToJson(WidgetEntityText instance) =>
    <String, dynamic>{'text': instance.text, 'runtimeType': instance.$type};

WidgetEntityCenter _$WidgetEntityCenterFromJson(Map<String, dynamic> json) =>
    WidgetEntityCenter(
      child: WidgetEntity.fromJson(json['child'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityCenterToJson(WidgetEntityCenter instance) =>
    <String, dynamic>{'child': instance.child, 'runtimeType': instance.$type};
