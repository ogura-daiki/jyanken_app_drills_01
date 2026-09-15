// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedScopeArgs _$FixedScopeArgsFromJson(Map<String, dynamic> json) =>
    _FixedScopeArgs(
      child: json['child'] == null
          ? null
          : WidgetEntity.fromJson(json['child'] as Map<String, dynamic>),
      variables: json['variables'] == null
          ? const ScopeDefinition(variables: [])
          : ScopeDefinition.fromJson(json['variables'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixedScopeArgsToJson(_FixedScopeArgs instance) =>
    <String, dynamic>{'child': instance.child, 'variables': instance.variables};
