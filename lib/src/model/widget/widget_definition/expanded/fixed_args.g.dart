// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedExpandedArgs _$FixedExpandedArgsFromJson(Map<String, dynamic> json) =>
    _FixedExpandedArgs(
      flex: (json['flex'] as num?)?.toInt() ?? 1,
      child: json['child'] == null
          ? null
          : WidgetEntity.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixedExpandedArgsToJson(_FixedExpandedArgs instance) =>
    <String, dynamic>{'flex': instance.flex, 'child': instance.child};
