// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedTextArgs _$FixedTextArgsFromJson(Map<String, dynamic> json) =>
    _FixedTextArgs(
      text: json['text'] as String,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 18.0,
      color: json['color'] == null
          ? null
          : ColorWrapper.fromJson(json['color'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixedTextArgsToJson(_FixedTextArgs instance) =>
    <String, dynamic>{
      'text': instance.text,
      'fontSize': instance.fontSize,
      'color': instance.color,
    };
