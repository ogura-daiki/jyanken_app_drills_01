// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_argument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetArgument _$WidgetArgumentFromJson(Map<String, dynamic> json) =>
    _WidgetArgument(
      definition: ArgumentDefinition.fromJson(
        json['definition'] as Map<String, dynamic>,
      ),
      value: VariableValue.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WidgetArgumentToJson(_WidgetArgument instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'value': instance.value,
    };
