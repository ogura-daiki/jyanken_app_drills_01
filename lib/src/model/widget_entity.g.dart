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

WidgetEntityColumn _$WidgetEntityColumnFromJson(Map<String, dynamic> json) =>
    WidgetEntityColumn(
      crossAxisAlignment: $enumDecode(
        _$CrossAxisAlignmentEnumMap,
        json['crossAxisAlignment'],
      ),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetEntityColumnToJson(WidgetEntityColumn instance) =>
    <String, dynamic>{
      'crossAxisAlignment':
          _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]!,
      'children': instance.children,
      'runtimeType': instance.$type,
    };

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};
