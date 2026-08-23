// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_child_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetChildSelector _$WidgetChildSelectorFromJson(Map<String, dynamic> json) =>
    _WidgetChildSelector(
      arg: CanHaveChildArg.fromJson(json['arg'] as Map<String, dynamic>),
      entityId: WidgetEntityId.fromJson(
        json['entityId'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$WidgetChildSelectorToJson(
  _WidgetChildSelector instance,
) => <String, dynamic>{'arg': instance.arg, 'entityId': instance.entityId};
