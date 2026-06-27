// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_arg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetArg _$WidgetArgFromJson(Map<String, dynamic> json) => _WidgetArg(
  type: $enumDecode(_$WidgetArgsTypeEnumMap, json['type']),
  name: json['name'] as String,
);

Map<String, dynamic> _$WidgetArgToJson(_WidgetArg instance) =>
    <String, dynamic>{
      'type': _$WidgetArgsTypeEnumMap[instance.type]!,
      'name': instance.name,
    };

const _$WidgetArgsTypeEnumMap = {
  WidgetArgsType.string: 'string',
  WidgetArgsType.double: 'double',
  WidgetArgsType.widget: 'widget',
  WidgetArgsType.widgetList: 'widgetList',
  WidgetArgsType.crossAxisAlignment: 'crossAxisAlignment',
};
