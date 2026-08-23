// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_arg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonnullArg<T> _$NonnullArgFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => NonnullArg<T>(
  fromJsonT(json['nonnullDefault']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$NonnullArgToJson<T>(
  NonnullArg<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'nonnullDefault': toJsonT(instance.nonnullDefault),
  'runtimeType': instance.$type,
};

NullableArg<T> _$NullableArgFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => NullableArg<T>(
  _$nullableGenericFromJson(json['nullableDefault'], fromJsonT) ?? null,
  json['runtimeType'] as String?,
);

Map<String, dynamic> _$NullableArgToJson<T>(
  NullableArg<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'nullableDefault': _$nullableGenericToJson(instance.nullableDefault, toJsonT),
  'runtimeType': instance.$type,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
