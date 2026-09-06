// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedColumnArgs _$FixedColumnArgsFromJson(Map<String, dynamic> json) =>
    _FixedColumnArgs(
      mainAxisAlignment:
          $enumDecodeNullable(
            _$MainAxisAlignmentEnumMap,
            json['mainAxisAlignment'],
          ) ??
          MainAxisAlignment.start,
      mainAxisSize:
          $enumDecodeNullable(_$MainAxisSizeEnumMap, json['mainAxisSize']) ??
          MainAxisSize.min,
      crossAxisAlignment:
          $enumDecodeNullable(
            _$CrossAxisAlignmentEnumMap,
            json['crossAxisAlignment'],
          ) ??
          CrossAxisAlignment.start,
      spacing: (json['spacing'] as num?)?.toDouble() ?? 0.0,
      children:
          (json['children'] as List<dynamic>?)
              ?.map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FixedColumnArgsToJson(
  _FixedColumnArgs instance,
) => <String, dynamic>{
  'mainAxisAlignment': _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]!,
  'mainAxisSize': _$MainAxisSizeEnumMap[instance.mainAxisSize]!,
  'crossAxisAlignment':
      _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]!,
  'spacing': instance.spacing,
  'children': instance.children,
};

const _$MainAxisAlignmentEnumMap = {
  MainAxisAlignment.start: 'start',
  MainAxisAlignment.end: 'end',
  MainAxisAlignment.center: 'center',
  MainAxisAlignment.spaceBetween: 'spaceBetween',
  MainAxisAlignment.spaceAround: 'spaceAround',
  MainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$MainAxisSizeEnumMap = {
  MainAxisSize.min: 'min',
  MainAxisSize.max: 'max',
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};
