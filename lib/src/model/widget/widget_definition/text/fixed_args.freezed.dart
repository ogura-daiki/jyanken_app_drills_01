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
mixin _$FixedTextArgs {

 String get text; double get fontSize; ColorWrapper? get color;
/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedTextArgsCopyWith<FixedTextArgs> get copyWith => _$FixedTextArgsCopyWithImpl<FixedTextArgs>(this as FixedTextArgs, _$identity);

  /// Serializes this FixedTextArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedTextArgs&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,fontSize,color);

@override
String toString() {
  return 'FixedTextArgs(text: $text, fontSize: $fontSize, color: $color)';
}


}

/// @nodoc
abstract mixin class $FixedTextArgsCopyWith<$Res>  {
  factory $FixedTextArgsCopyWith(FixedTextArgs value, $Res Function(FixedTextArgs) _then) = _$FixedTextArgsCopyWithImpl;
@useResult
$Res call({
 String text, double fontSize, ColorWrapper? color
});


$ColorWrapperCopyWith<$Res>? get color;

}
/// @nodoc
class _$FixedTextArgsCopyWithImpl<$Res>
    implements $FixedTextArgsCopyWith<$Res> {
  _$FixedTextArgsCopyWithImpl(this._self, this._then);

  final FixedTextArgs _self;
  final $Res Function(FixedTextArgs) _then;

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? fontSize = null,Object? color = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,
  ));
}
/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}
}


/// Adds pattern-matching-related methods to [FixedTextArgs].
extension FixedTextArgsPatterns on FixedTextArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedTextArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedTextArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedTextArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedTextArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  double fontSize,  ColorWrapper? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
return $default(_that.text,_that.fontSize,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  double fontSize,  ColorWrapper? color)  $default,) {final _that = this;
switch (_that) {
case _FixedTextArgs():
return $default(_that.text,_that.fontSize,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  double fontSize,  ColorWrapper? color)?  $default,) {final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
return $default(_that.text,_that.fontSize,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedTextArgs extends FixedTextArgs {
  const _FixedTextArgs({required this.text, this.fontSize = 18.0, this.color = null}): super._();
  factory _FixedTextArgs.fromJson(Map<String, dynamic> json) => _$FixedTextArgsFromJson(json);

@override final  String text;
@override@JsonKey() final  double fontSize;
@override@JsonKey() final  ColorWrapper? color;

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedTextArgsCopyWith<_FixedTextArgs> get copyWith => __$FixedTextArgsCopyWithImpl<_FixedTextArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedTextArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedTextArgs&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,fontSize,color);

@override
String toString() {
  return 'FixedTextArgs(text: $text, fontSize: $fontSize, color: $color)';
}


}

/// @nodoc
abstract mixin class _$FixedTextArgsCopyWith<$Res> implements $FixedTextArgsCopyWith<$Res> {
  factory _$FixedTextArgsCopyWith(_FixedTextArgs value, $Res Function(_FixedTextArgs) _then) = __$FixedTextArgsCopyWithImpl;
@override @useResult
$Res call({
 String text, double fontSize, ColorWrapper? color
});


@override $ColorWrapperCopyWith<$Res>? get color;

}
/// @nodoc
class __$FixedTextArgsCopyWithImpl<$Res>
    implements _$FixedTextArgsCopyWith<$Res> {
  __$FixedTextArgsCopyWithImpl(this._self, this._then);

  final _FixedTextArgs _self;
  final $Res Function(_FixedTextArgs) _then;

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? fontSize = null,Object? color = freezed,}) {
  return _then(_FixedTextArgs(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,
  ));
}

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}
}

// dart format on
