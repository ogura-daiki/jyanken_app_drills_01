// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_tree_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetTreeActionUpdate _$WidgetTreeActionUpdateFromJson(
  Map<String, dynamic> json,
) => WidgetTreeActionUpdate(
  selector: (json['selector'] as List<dynamic>)
      .map((e) => WidgetChildSelector.fromJson(e as Map<String, dynamic>))
      .toList(),
  oldValue: json['oldValue'] == null
      ? null
      : WidgetEntity.fromJson(json['oldValue'] as Map<String, dynamic>),
  newValue: WidgetEntity.fromJson(json['newValue'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetTreeActionUpdateToJson(
  WidgetTreeActionUpdate instance,
) => <String, dynamic>{
  'selector': instance.selector,
  'oldValue': instance.oldValue,
  'newValue': instance.newValue,
  'runtimeType': instance.$type,
};

WidgetTreeActionRemove _$WidgetTreeActionRemoveFromJson(
  Map<String, dynamic> json,
) => WidgetTreeActionRemove(
  selector: (json['selector'] as List<dynamic>)
      .map((e) => WidgetChildSelector.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetTreeActionRemoveToJson(
  WidgetTreeActionRemove instance,
) => <String, dynamic>{
  'selector': instance.selector,
  'runtimeType': instance.$type,
};
