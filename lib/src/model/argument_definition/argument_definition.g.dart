// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'argument_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArgumentDefinition _$ArgumentDefinitionFromJson(Map<String, dynamic> json) =>
    _ArgumentDefinition(
      name: json['name'] as String,
      defaultValue: VariableValue.fromJson(
        json['defaultValue'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ArgumentDefinitionToJson(_ArgumentDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'defaultValue': instance.defaultValue,
    };
