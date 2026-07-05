import 'package:freezed_annotation/freezed_annotation.dart';
part 'typed_arg.freezed.dart';
part 'typed_arg.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class TypedArg<T> with _$TypedArg<T> {
  const TypedArg._();
  const factory TypedArg.nonNull(
    @Assert("value is! TypedArg") T nonnullDefault,
  ) = NonnullArg;
  const factory TypedArg.nullable([
    @Assert("value is! TypedArg") @Default(null) T? nullableDefault,
  ]) = NullableArg;

  bool get nullable => switch (this) {
    NonnullArg() => false,
    NullableArg() => true,
  };

  T? get defaultValue => switch (this) {
    NonnullArg a => a.value,
    NullableArg a => a.value,
  };

  factory TypedArg.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$TypedArgFromJson(json, fromJsonT);
}

extension NonnullValueExt<T> on NonnullArg<T> {
  T get value => nonnullDefault;
}

extension NullableValueExt<T> on NullableArg<T> {
  T? get value => nullableDefault;
}
