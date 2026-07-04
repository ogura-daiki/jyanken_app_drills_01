import 'package:freezed_annotation/freezed_annotation.dart';
part 'typed_arg.freezed.dart';
part 'typed_arg.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class TypedArg<T> with _$TypedArg<T> {
  const TypedArg._();
  const factory TypedArg.nonNull(@Assert("value is! TypedArg") T nonnull) =
      NonnullArg;
  const factory TypedArg.nullable([
    @Assert("value is! TypedArg") @Default(null) T? nullable,
  ]) = NullableArg;

  factory TypedArg.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$TypedArgFromJson(json, fromJsonT);
}

extension NonnullValueExt<T> on NonnullArg<T> {
  T get value => nonnull;
}

extension NullableValueExt<T> on NullableArg<T> {
  T? get value => nullable;
}
