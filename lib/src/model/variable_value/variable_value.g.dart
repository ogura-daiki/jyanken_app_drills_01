// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableValueString _$VariableValueStringFromJson(Map<String, dynamic> json) =>
    VariableValueString(
      rawValue: json['rawValue'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VariableValueStringToJson(
  VariableValueString instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueStringList _$VariableValueStringListFromJson(
  Map<String, dynamic> json,
) => VariableValueStringList(
  rawValue: (json['rawValue'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueStringListToJson(
  VariableValueStringList instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueDouble _$VariableValueDoubleFromJson(Map<String, dynamic> json) =>
    VariableValueDouble(
      rawValue: (json['rawValue'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VariableValueDoubleToJson(
  VariableValueDouble instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueInt _$VariableValueIntFromJson(Map<String, dynamic> json) =>
    VariableValueInt(
      rawValue: (json['rawValue'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VariableValueIntToJson(VariableValueInt instance) =>
    <String, dynamic>{
      'rawValue': instance.rawValue,
      'runtimeType': instance.$type,
    };

VariableValueDoubleNullable _$VariableValueDoubleNullableFromJson(
  Map<String, dynamic> json,
) => VariableValueDoubleNullable(
  rawValue: (json['rawValue'] as num?)?.toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueDoubleNullableToJson(
  VariableValueDoubleNullable instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueColorNullable _$VariableValueColorNullableFromJson(
  Map<String, dynamic> json,
) => VariableValueColorNullable(
  rawValue: json['rawValue'] == null
      ? null
      : ColorWrapper.fromJson(json['rawValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueColorNullableToJson(
  VariableValueColorNullable instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueCrossAxisAlignment _$VariableValueCrossAxisAlignmentFromJson(
  Map<String, dynamic> json,
) => VariableValueCrossAxisAlignment(
  rawValue: $enumDecode(_$CrossAxisAlignmentEnumMap, json['rawValue']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueCrossAxisAlignmentToJson(
  VariableValueCrossAxisAlignment instance,
) => <String, dynamic>{
  'rawValue': _$CrossAxisAlignmentEnumMap[instance.rawValue]!,
  'runtimeType': instance.$type,
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};

VariableValueMainAxisAlignment _$VariableValueMainAxisAlignmentFromJson(
  Map<String, dynamic> json,
) => VariableValueMainAxisAlignment(
  rawValue: $enumDecode(_$MainAxisAlignmentEnumMap, json['rawValue']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueMainAxisAlignmentToJson(
  VariableValueMainAxisAlignment instance,
) => <String, dynamic>{
  'rawValue': _$MainAxisAlignmentEnumMap[instance.rawValue]!,
  'runtimeType': instance.$type,
};

const _$MainAxisAlignmentEnumMap = {
  MainAxisAlignment.start: 'start',
  MainAxisAlignment.end: 'end',
  MainAxisAlignment.center: 'center',
  MainAxisAlignment.spaceBetween: 'spaceBetween',
  MainAxisAlignment.spaceAround: 'spaceAround',
  MainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

VariableValueMainAxisSize _$VariableValueMainAxisSizeFromJson(
  Map<String, dynamic> json,
) => VariableValueMainAxisSize(
  rawValue: $enumDecode(_$MainAxisSizeEnumMap, json['rawValue']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueMainAxisSizeToJson(
  VariableValueMainAxisSize instance,
) => <String, dynamic>{
  'rawValue': _$MainAxisSizeEnumMap[instance.rawValue]!,
  'runtimeType': instance.$type,
};

const _$MainAxisSizeEnumMap = {
  MainAxisSize.min: 'min',
  MainAxisSize.max: 'max',
};

VariableValueWidget _$VariableValueWidgetFromJson(Map<String, dynamic> json) =>
    VariableValueWidget(
      rawValue: json['rawValue'] == null
          ? null
          : WidgetEntity.fromJson(json['rawValue'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VariableValueWidgetToJson(
  VariableValueWidget instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueWidgetList _$VariableValueWidgetListFromJson(
  Map<String, dynamic> json,
) => VariableValueWidgetList(
  rawValue: (json['rawValue'] as List<dynamic>)
      .map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueWidgetListToJson(
  VariableValueWidgetList instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueAlignment _$VariableValueAlignmentFromJson(
  Map<String, dynamic> json,
) => VariableValueAlignment(
  rawValue: AlignmentWrapper.fromJson(json['rawValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueAlignmentToJson(
  VariableValueAlignment instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueTextStyle _$VariableValueTextStyleFromJson(
  Map<String, dynamic> json,
) => VariableValueTextStyle(
  rawValue: json['rawValue'] == null
      ? null
      : TextStyleWrapper.fromJson(json['rawValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueTextStyleToJson(
  VariableValueTextStyle instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueVariable _$VariableValueVariableFromJson(
  Map<String, dynamic> json,
) => VariableValueVariable(
  rawValue: Variable.fromJson(json['rawValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueVariableToJson(
  VariableValueVariable instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};

VariableValueScope _$VariableValueScopeFromJson(Map<String, dynamic> json) =>
    VariableValueScope(
      rawValue: ScopeDefinition.fromJson(
        json['rawValue'] as Map<String, dynamic>,
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VariableValueScopeToJson(VariableValueScope instance) =>
    <String, dynamic>{
      'rawValue': instance.rawValue,
      'runtimeType': instance.$type,
    };

VariableValueHandsResult _$VariableValueHandsResultFromJson(
  Map<String, dynamic> json,
) => VariableValueHandsResult(
  rawValue: HandsResult.fromJson(json['rawValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$VariableValueHandsResultToJson(
  VariableValueHandsResult instance,
) => <String, dynamic>{
  'rawValue': instance.rawValue,
  'runtimeType': instance.$type,
};
