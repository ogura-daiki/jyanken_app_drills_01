// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scope_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScopeDefinition _$ScopeDefinitionFromJson(Map<String, dynamic> json) =>
    _ScopeDefinition(
      variables: (json['variables'] as List<dynamic>)
          .map((e) => Variable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScopeDefinitionToJson(_ScopeDefinition instance) =>
    <String, dynamic>{'variables': instance.variables};
