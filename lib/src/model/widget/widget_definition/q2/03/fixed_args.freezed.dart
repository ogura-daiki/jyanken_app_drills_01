// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixed_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FixedQ2_3Args {

 HandsResult get handsResult;
/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedQ2_3ArgsCopyWith<FixedQ2_3Args> get copyWith => _$FixedQ2_3ArgsCopyWithImpl<FixedQ2_3Args>(this as FixedQ2_3Args, _$identity);

  /// Serializes this FixedQ2_3Args to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedQ2_3Args&&(identical(other.handsResult, handsResult) || other.handsResult == handsResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,handsResult);

@override
String toString() {
  return 'FixedQ2_3Args(handsResult: $handsResult)';
}


}

/// @nodoc
abstract mixin class $FixedQ2_3ArgsCopyWith<$Res>  {
  factory $FixedQ2_3ArgsCopyWith(FixedQ2_3Args value, $Res Function(FixedQ2_3Args) _then) = _$FixedQ2_3ArgsCopyWithImpl;
@useResult
$Res call({
 HandsResult handsResult
});


$HandsResultCopyWith<$Res> get handsResult;

}
/// @nodoc
class _$FixedQ2_3ArgsCopyWithImpl<$Res>
    implements $FixedQ2_3ArgsCopyWith<$Res> {
  _$FixedQ2_3ArgsCopyWithImpl(this._self, this._then);

  final FixedQ2_3Args _self;
  final $Res Function(FixedQ2_3Args) _then;

/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? handsResult = null,}) {
  return _then(_self.copyWith(
handsResult: null == handsResult ? _self.handsResult : handsResult // ignore: cast_nullable_to_non_nullable
as HandsResult,
  ));
}
/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandsResultCopyWith<$Res> get handsResult {
  
  return $HandsResultCopyWith<$Res>(_self.handsResult, (value) {
    return _then(_self.copyWith(handsResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [FixedQ2_3Args].
extension FixedQ2_3ArgsPatterns on FixedQ2_3Args {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedQ2_3Args value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedQ2_3Args() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedQ2_3Args value)  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_3Args():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedQ2_3Args value)?  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_3Args() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HandsResult handsResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedQ2_3Args() when $default != null:
return $default(_that.handsResult);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HandsResult handsResult)  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_3Args():
return $default(_that.handsResult);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HandsResult handsResult)?  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_3Args() when $default != null:
return $default(_that.handsResult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedQ2_3Args extends FixedQ2_3Args {
  const _FixedQ2_3Args({this.handsResult = const HandsResult()}): super._();
  factory _FixedQ2_3Args.fromJson(Map<String, dynamic> json) => _$FixedQ2_3ArgsFromJson(json);

@override@JsonKey() final  HandsResult handsResult;

/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedQ2_3ArgsCopyWith<_FixedQ2_3Args> get copyWith => __$FixedQ2_3ArgsCopyWithImpl<_FixedQ2_3Args>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedQ2_3ArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedQ2_3Args&&(identical(other.handsResult, handsResult) || other.handsResult == handsResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,handsResult);

@override
String toString() {
  return 'FixedQ2_3Args(handsResult: $handsResult)';
}


}

/// @nodoc
abstract mixin class _$FixedQ2_3ArgsCopyWith<$Res> implements $FixedQ2_3ArgsCopyWith<$Res> {
  factory _$FixedQ2_3ArgsCopyWith(_FixedQ2_3Args value, $Res Function(_FixedQ2_3Args) _then) = __$FixedQ2_3ArgsCopyWithImpl;
@override @useResult
$Res call({
 HandsResult handsResult
});


@override $HandsResultCopyWith<$Res> get handsResult;

}
/// @nodoc
class __$FixedQ2_3ArgsCopyWithImpl<$Res>
    implements _$FixedQ2_3ArgsCopyWith<$Res> {
  __$FixedQ2_3ArgsCopyWithImpl(this._self, this._then);

  final _FixedQ2_3Args _self;
  final $Res Function(_FixedQ2_3Args) _then;

/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? handsResult = null,}) {
  return _then(_FixedQ2_3Args(
handsResult: null == handsResult ? _self.handsResult : handsResult // ignore: cast_nullable_to_non_nullable
as HandsResult,
  ));
}

/// Create a copy of FixedQ2_3Args
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandsResultCopyWith<$Res> get handsResult {
  
  return $HandsResultCopyWith<$Res>(_self.handsResult, (value) {
    return _then(_self.copyWith(handsResult: value));
  });
}
}

// dart format on
