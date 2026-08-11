// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resizable_area_layout_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResizableAreaLayoutItemArea _$ResizableAreaLayoutItemAreaFromJson(
  Map<String, dynamic> json,
) => ResizableAreaLayoutItemArea(
  areaName: json['areaName'] as String,
  layoutId: (json['layoutId'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResizableAreaLayoutItemAreaToJson(
  ResizableAreaLayoutItemArea instance,
) => <String, dynamic>{
  'areaName': instance.areaName,
  'layoutId': instance.layoutId,
  'runtimeType': instance.$type,
};

ResizableAreaLayoutItemThumb _$ResizableAreaLayoutItemThumbFromJson(
  Map<String, dynamic> json,
) => ResizableAreaLayoutItemThumb(
  layoutId: (json['layoutId'] as num).toInt(),
  thumbIndex: (json['thumbIndex'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResizableAreaLayoutItemThumbToJson(
  ResizableAreaLayoutItemThumb instance,
) => <String, dynamic>{
  'layoutId': instance.layoutId,
  'thumbIndex': instance.thumbIndex,
  'runtimeType': instance.$type,
};
