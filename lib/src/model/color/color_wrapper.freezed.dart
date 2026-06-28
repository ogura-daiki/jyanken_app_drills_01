// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColorWrapper {

 double get red; double get green; double get blue; double get alpha;
/// Create a copy of ColorWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<ColorWrapper> get copyWith => _$ColorWrapperCopyWithImpl<ColorWrapper>(this as ColorWrapper, _$identity);

  /// Serializes this ColorWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorWrapper&&(identical(other.red, red) || other.red == red)&&(identical(other.green, green) || other.green == green)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.alpha, alpha) || other.alpha == alpha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,red,green,blue,alpha);

@override
String toString() {
  return 'ColorWrapper(red: $red, green: $green, blue: $blue, alpha: $alpha)';
}


}

/// @nodoc
abstract mixin class $ColorWrapperCopyWith<$Res>  {
  factory $ColorWrapperCopyWith(ColorWrapper value, $Res Function(ColorWrapper) _then) = _$ColorWrapperCopyWithImpl;
@useResult
$Res call({
 double red, double green, double blue, double alpha
});




}
/// @nodoc
class _$ColorWrapperCopyWithImpl<$Res>
    implements $ColorWrapperCopyWith<$Res> {
  _$ColorWrapperCopyWithImpl(this._self, this._then);

  final ColorWrapper _self;
  final $Res Function(ColorWrapper) _then;

/// Create a copy of ColorWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? red = null,Object? green = null,Object? blue = null,Object? alpha = null,}) {
  return _then(_self.copyWith(
red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as double,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as double,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as double,alpha: null == alpha ? _self.alpha : alpha // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ColorWrapper].
extension ColorWrapperPatterns on ColorWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColorWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColorWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColorWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ColorWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColorWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ColorWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double red,  double green,  double blue,  double alpha)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColorWrapper() when $default != null:
return $default(_that.red,_that.green,_that.blue,_that.alpha);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double red,  double green,  double blue,  double alpha)  $default,) {final _that = this;
switch (_that) {
case _ColorWrapper():
return $default(_that.red,_that.green,_that.blue,_that.alpha);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double red,  double green,  double blue,  double alpha)?  $default,) {final _that = this;
switch (_that) {
case _ColorWrapper() when $default != null:
return $default(_that.red,_that.green,_that.blue,_that.alpha);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ColorWrapper extends ColorWrapper {
  const _ColorWrapper({required this.red, required this.green, required this.blue, required this.alpha}): super._();
  factory _ColorWrapper.fromJson(Map<String, dynamic> json) => _$ColorWrapperFromJson(json);

@override final  double red;
@override final  double green;
@override final  double blue;
@override final  double alpha;

/// Create a copy of ColorWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorWrapperCopyWith<_ColorWrapper> get copyWith => __$ColorWrapperCopyWithImpl<_ColorWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColorWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorWrapper&&(identical(other.red, red) || other.red == red)&&(identical(other.green, green) || other.green == green)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.alpha, alpha) || other.alpha == alpha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,red,green,blue,alpha);

@override
String toString() {
  return 'ColorWrapper(red: $red, green: $green, blue: $blue, alpha: $alpha)';
}


}

/// @nodoc
abstract mixin class _$ColorWrapperCopyWith<$Res> implements $ColorWrapperCopyWith<$Res> {
  factory _$ColorWrapperCopyWith(_ColorWrapper value, $Res Function(_ColorWrapper) _then) = __$ColorWrapperCopyWithImpl;
@override @useResult
$Res call({
 double red, double green, double blue, double alpha
});




}
/// @nodoc
class __$ColorWrapperCopyWithImpl<$Res>
    implements _$ColorWrapperCopyWith<$Res> {
  __$ColorWrapperCopyWithImpl(this._self, this._then);

  final _ColorWrapper _self;
  final $Res Function(_ColorWrapper) _then;

/// Create a copy of ColorWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? red = null,Object? green = null,Object? blue = null,Object? alpha = null,}) {
  return _then(_ColorWrapper(
red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as double,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as double,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as double,alpha: null == alpha ? _self.alpha : alpha // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
