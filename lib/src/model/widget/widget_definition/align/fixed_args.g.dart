// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedAlignArgs _$FixedAlignArgsFromJson(Map<String, dynamic> json) =>
    _FixedAlignArgs(
      child: json['child'] == null
          ? null
          : WidgetEntity.fromJson(json['child'] as Map<String, dynamic>),
      alignment: AlignmentWrapper.fromJson(
        json['alignment'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FixedAlignArgsToJson(_FixedAlignArgs instance) =>
    <String, dynamic>{'child': instance.child, 'alignment': instance.alignment};
