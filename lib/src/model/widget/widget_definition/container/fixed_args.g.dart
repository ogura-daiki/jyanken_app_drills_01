// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedContainerArgs _$FixedContainerArgsFromJson(Map<String, dynamic> json) =>
    _FixedContainerArgs(
      width: (json['width'] as num?)?.toDouble() ?? null,
      height: (json['height'] as num?)?.toDouble() ?? null,
      color: json['color'] == null
          ? null
          : ColorWrapper.fromJson(json['color'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : WidgetEntity.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixedContainerArgsToJson(_FixedContainerArgs instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'child': instance.child,
    };
