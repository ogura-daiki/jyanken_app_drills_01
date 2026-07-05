// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FixedColumnArgs _$FixedColumnArgsFromJson(Map<String, dynamic> json) =>
    _FixedColumnArgs(
      crossAxisAlignment:
          $enumDecodeNullable(
            _$CrossAxisAlignmentEnumMap,
            json['crossAxisAlignment'],
          ) ??
          CrossAxisAlignment.start,
      children:
          (json['children'] as List<dynamic>?)
              ?.map((e) => WidgetEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FixedColumnArgsToJson(_FixedColumnArgs instance) =>
    <String, dynamic>{
      'crossAxisAlignment':
          _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]!,
      'children': instance.children,
    };

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};
