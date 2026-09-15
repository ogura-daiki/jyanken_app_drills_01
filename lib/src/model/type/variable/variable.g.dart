// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Variable _$VariableFromJson(Map<String, dynamic> json) => _Variable(
  name: json['name'] as String,
  initialValue: VariableValue.fromJson(
    json['initialValue'] as Map<String, dynamic>,
  ),
  value: VariableValue.fromJson(json['value'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VariableToJson(_Variable instance) => <String, dynamic>{
  'name': instance.name,
  'initialValue': instance.initialValue,
  'value': instance.value,
};
