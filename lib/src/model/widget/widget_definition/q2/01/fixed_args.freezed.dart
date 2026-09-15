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
mixin _$FixedQ2_1Args {

 String get displayText;
/// Create a copy of FixedQ2_1Args
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedQ2_1ArgsCopyWith<FixedQ2_1Args> get copyWith => _$FixedQ2_1ArgsCopyWithImpl<FixedQ2_1Args>(this as FixedQ2_1Args, _$identity);

  /// Serializes this FixedQ2_1Args to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedQ2_1Args&&(identical(other.displayText, displayText) || other.displayText == displayText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayText);

@override
String toString() {
  return 'FixedQ2_1Args(displayText: $displayText)';
}


}

/// @nodoc
abstract mixin class $FixedQ2_1ArgsCopyWith<$Res>  {
  factory $FixedQ2_1ArgsCopyWith(FixedQ2_1Args value, $Res Function(FixedQ2_1Args) _then) = _$FixedQ2_1ArgsCopyWithImpl;
@useResult
$Res call({
 String displayText
});




}
/// @nodoc
class _$FixedQ2_1ArgsCopyWithImpl<$Res>
    implements $FixedQ2_1ArgsCopyWith<$Res> {
  _$FixedQ2_1ArgsCopyWithImpl(this._self, this._then);

  final FixedQ2_1Args _self;
  final $Res Function(FixedQ2_1Args) _then;

/// Create a copy of FixedQ2_1Args
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayText = null,}) {
  return _then(_self.copyWith(
displayText: null == displayText ? _self.displayText : displayText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FixedQ2_1Args].
extension FixedQ2_1ArgsPatterns on FixedQ2_1Args {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedQ2_1Args value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedQ2_1Args() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedQ2_1Args value)  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_1Args():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedQ2_1Args value)?  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_1Args() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedQ2_1Args() when $default != null:
return $default(_that.displayText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayText)  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_1Args():
return $default(_that.displayText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayText)?  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_1Args() when $default != null:
return $default(_that.displayText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedQ2_1Args extends FixedQ2_1Args {
  const _FixedQ2_1Args({this.displayText = ""}): super._();
  factory _FixedQ2_1Args.fromJson(Map<String, dynamic> json) => _$FixedQ2_1ArgsFromJson(json);

@override@JsonKey() final  String displayText;

/// Create a copy of FixedQ2_1Args
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedQ2_1ArgsCopyWith<_FixedQ2_1Args> get copyWith => __$FixedQ2_1ArgsCopyWithImpl<_FixedQ2_1Args>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedQ2_1ArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedQ2_1Args&&(identical(other.displayText, displayText) || other.displayText == displayText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayText);

@override
String toString() {
  return 'FixedQ2_1Args(displayText: $displayText)';
}


}

/// @nodoc
abstract mixin class _$FixedQ2_1ArgsCopyWith<$Res> implements $FixedQ2_1ArgsCopyWith<$Res> {
  factory _$FixedQ2_1ArgsCopyWith(_FixedQ2_1Args value, $Res Function(_FixedQ2_1Args) _then) = __$FixedQ2_1ArgsCopyWithImpl;
@override @useResult
$Res call({
 String displayText
});




}
/// @nodoc
class __$FixedQ2_1ArgsCopyWithImpl<$Res>
    implements _$FixedQ2_1ArgsCopyWith<$Res> {
  __$FixedQ2_1ArgsCopyWithImpl(this._self, this._then);

  final _FixedQ2_1Args _self;
  final $Res Function(_FixedQ2_1Args) _then;

/// Create a copy of FixedQ2_1Args
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayText = null,}) {
  return _then(_FixedQ2_1Args(
displayText: null == displayText ? _self.displayText : displayText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
