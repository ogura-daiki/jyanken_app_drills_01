// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_node_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TreeNodeSelector _$TreeNodeSelectorFromJson(Map<String, dynamic> json) =>
    _TreeNodeSelector(
      arg: CanHaveChildArg.fromJson(json['arg'] as Map<String, dynamic>),
      entityId: WidgetEntityId.fromJson(
        json['entityId'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$TreeNodeSelectorToJson(_TreeNodeSelector instance) =>
    <String, dynamic>{'arg': instance.arg, 'entityId': instance.entityId};
