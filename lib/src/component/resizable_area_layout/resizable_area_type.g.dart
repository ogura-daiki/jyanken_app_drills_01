// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resizable_area_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResizableAreaTypeFixed _$ResizableAreaTypeFixedFromJson(
  Map<String, dynamic> json,
) => ResizableAreaTypeFixed(
  (json['initial'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResizableAreaTypeFixedToJson(
  ResizableAreaTypeFixed instance,
) => <String, dynamic>{
  'initial': instance.initial,
  'runtimeType': instance.$type,
};

ResizableAreaTypeRatio _$ResizableAreaTypeRatioFromJson(
  Map<String, dynamic> json,
) => ResizableAreaTypeRatio(
  (json['ratio'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResizableAreaTypeRatioToJson(
  ResizableAreaTypeRatio instance,
) => <String, dynamic>{'ratio': instance.ratio, 'runtimeType': instance.$type};

ResizableAreaTypeWeight _$ResizableAreaTypeWeightFromJson(
  Map<String, dynamic> json,
) => ResizableAreaTypeWeight(
  (json['weight'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResizableAreaTypeWeightToJson(
  ResizableAreaTypeWeight instance,
) => <String, dynamic>{
  'weight': instance.weight,
  'runtimeType': instance.$type,
};
