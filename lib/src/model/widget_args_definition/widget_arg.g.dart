// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_arg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetArgString _$WidgetArgStringFromJson(Map<String, dynamic> json) =>
    WidgetArgString(
      name: json['name'] as String,
      defaultValue: json['defaultValue'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetArgStringToJson(WidgetArgString instance) =>
    <String, dynamic>{
      'name': instance.name,
      'defaultValue': instance.defaultValue,
      'runtimeType': instance.$type,
    };

WidgetArgDouble _$WidgetArgDoubleFromJson(Map<String, dynamic> json) =>
    WidgetArgDouble(
      name: json['name'] as String,
      defaultValue: (json['defaultValue'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetArgDoubleToJson(WidgetArgDouble instance) =>
    <String, dynamic>{
      'name': instance.name,
      'defaultValue': instance.defaultValue,
      'runtimeType': instance.$type,
    };

WidgetArgDoubleNullable _$WidgetArgDoubleNullableFromJson(
  Map<String, dynamic> json,
) => WidgetArgDoubleNullable(
  name: json['name'] as String,
  defaultValue: (json['defaultValue'] as num?)?.toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgDoubleNullableToJson(
  WidgetArgDoubleNullable instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgColorNullable _$WidgetArgColorNullableFromJson(
  Map<String, dynamic> json,
) => WidgetArgColorNullable(
  name: json['name'] as String,
  defaultValue: json['defaultValue'] == null
      ? null
      : ColorWrapper.fromJson(json['defaultValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgColorNullableToJson(
  WidgetArgColorNullable instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};

WidgetArgCrossAxisAlignment _$WidgetArgCrossAxisAlignmentFromJson(
  Map<String, dynamic> json,
) => WidgetArgCrossAxisAlignment(
  name: json['name'] as String,
  defaultValue: $enumDecode(_$CrossAxisAlignmentEnumMap, json['defaultValue']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetArgCrossAxisAlignmentToJson(
  WidgetArgCrossAxisAlignment instance,
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

WidgetArgWidget _$WidgetArgWidgetFromJson(Map<String, dynamic> json) =>
    WidgetArgWidget(
      name: json['name'] as String,
      defaultValue: json['defaultValue'] == null
          ? null
          : WidgetEntity.fromJson(json['defaultValue'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetArgWidgetToJson(WidgetArgWidget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'defaultValue': instance.defaultValue,
      'runtimeType': instance.$type,
    };

WidgetArgWidgetList _$WidgetArgWidgetListFromJson(Map<String, dynamic> json) =>
    WidgetArgWidgetList(
      name: json['name'] as String,
      defaultValue: (json['defaultValue'] as List<dynamic>)
          .map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WidgetArgWidgetListToJson(
  WidgetArgWidgetList instance,
) => <String, dynamic>{
  'name': instance.name,
  'defaultValue': instance.defaultValue,
  'runtimeType': instance.$type,
};
