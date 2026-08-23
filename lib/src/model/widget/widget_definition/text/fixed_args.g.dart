// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedTextArgs _$FixedTextArgsFromJson(Map<String, dynamic> json) =>
    _FixedTextArgs(
      text: json['text'] as String,
      style: json['style'] == null
          ? null
          : TextStyleWrapper.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixedTextArgsToJson(_FixedTextArgs instance) =>
    <String, dynamic>{'text': instance.text, 'style': instance.style};
