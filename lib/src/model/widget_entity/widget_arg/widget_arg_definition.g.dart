// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_arg_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetArgDefinitionString _$WidgetArgDefinitionStringFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionString(
  name: json['name'] as String,
  defaultValue: json['defaultValue'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionStringToJson(
  WidgetArgDefinitionString instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgDefinitionDouble _$WidgetArgDefinitionDoubleFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionDouble(
  name: json['name'] as String,
  defaultValue: (json['defaultValue'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionDoubleToJson(
  WidgetArgDefinitionDouble instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgDefinitionDoubleNullable _$WidgetArgDefinitionDoubleNullableFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionDoubleNullable(
  name: json['name'] as String,
  defaultValue: (json['defaultValue'] as num?)?.toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionDoubleNullableToJson(
  WidgetArgDefinitionDoubleNullable instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgDefinitionColorNullable _$WidgetArgDefinitionColorNullableFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionColorNullable(
  name: json['name'] as String,
  defaultValue: json['defaultValue'] == null
      ? null
      : ColorWrapper.fromJson(json['defaultValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionColorNullableToJson(
  WidgetArgDefinitionColorNullable instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgDefinitionCrossAxisAlignment
_$WidgetArgDefinitionCrossAxisAlignmentFromJson(Map<String, dynamic> json) =>
    WidgetArgDefinitionCrossAxisAlignment(
      name: json['name'] as String,
      defaultValue: $enumDecode(
        _$CrossAxisAlignmentEnumMap,
        json['defaultValue'],
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetArgDefinitionCrossAxisAlignmentToJson(
  WidgetArgDefinitionCrossAxisAlignment instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': _$CrossAxisAlignmentEnumMap[instance.defaultValue]!,
  'runtimeType': instance.$type,
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};

WidgetArgDefinitionWidget _$WidgetArgDefinitionWidgetFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionWidget(
  name: json['name'] as String,
  defaultValue: json['defaultValue'] == null
      ? null
      : WidgetEntity.fromJson(json['defaultValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionWidgetToJson(
  WidgetArgDefinitionWidget instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgDefinitionWidgetList _$WidgetArgDefinitionWidgetListFromJson(
  Map<String, dynamic> json,
) => WidgetArgDefinitionWidgetList(
  name: json['name'] as String,
  defaultValue: (json['defaultValue'] as List<dynamic>)
      .map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDefinitionWidgetListToJson(
  WidgetArgDefinitionWidgetList instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};
