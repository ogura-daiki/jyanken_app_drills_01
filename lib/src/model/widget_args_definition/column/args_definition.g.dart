// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'args_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColumnArgsDefinitionCrossAxisAlignment
_$ColumnArgsDefinitionCrossAxisAlignmentFromJson(Map<String, dynamic> json) =>
    ColumnArgsDefinitionCrossAxisAlignment(
      value: $enumDecode(_$CrossAxisAlignmentEnumMap, json['value']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ColumnArgsDefinitionCrossAxisAlignmentToJson(
  ColumnArgsDefinitionCrossAxisAlignment instance,
) => <String, dynamic>{
  'value': _$CrossAxisAlignmentEnumMap[instance.value]!,
  'runtimeType': instance.$type,
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};

ColumnArgsDefinitionChildren _$ColumnArgsDefinitionChildrenFromJson(
  Map<String, dynamic> json,
) => ColumnArgsDefinitionChildren(
  value: (json['value'] as List<dynamic>)
      .map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ColumnArgsDefinitionChildrenToJson(
  ColumnArgsDefinitionChildren instance,
) => <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};
