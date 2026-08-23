// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColorWrapper _$ColorWrapperFromJson(Map<String, dynamic> json) =>
    _ColorWrapper(
      red: (json['red'] as num).toDouble(),
      green: (json['green'] as num).toDouble(),
      blue: (json['blue'] as num).toDouble(),
      alpha: (json['alpha'] as num).toDouble(),
    );

Map<String, dynamic> _$ColorWrapperToJson(_ColorWrapper instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
      'alpha': instance.alpha,
    };
