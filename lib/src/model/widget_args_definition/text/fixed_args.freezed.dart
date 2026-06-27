// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixed_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FixedTextArgs {

 String get text; double get fontSize;
/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedTextArgsCopyWith<FixedTextArgs> get copyWith => _$FixedTextArgsCopyWithImpl<FixedTextArgs>(this as FixedTextArgs, _$identity);

  /// Serializes this FixedTextArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedTextArgs&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,fontSize);

@override
String toString() {
  return 'FixedTextArgs(text: $text, fontSize: $fontSize)';
}


}

/// @nodoc
abstract mixin class $FixedTextArgsCopyWith<$Res>  {
  factory $FixedTextArgsCopyWith(FixedTextArgs value, $Res Function(FixedTextArgs) _then) = _$FixedTextArgsCopyWithImpl;
@useResult
$Res call({
 String text, double fontSize
});




}
/// @nodoc
class _$FixedTextArgsCopyWithImpl<$Res>
    implements $FixedTextArgsCopyWith<$Res> {
  _$FixedTextArgsCopyWithImpl(this._self, this._then);

  final FixedTextArgs _self;
  final $Res Function(FixedTextArgs) _then;

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? fontSize = null,}) {
  return _then(FixedTextArgs(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  double fontSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
return $default(_that.text,_that.fontSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  double fontSize)  $default,) {final _that = this;
switch (_that) {
case _FixedTextArgs():
return $default(_that.text,_that.fontSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  double fontSize)?  $default,) {final _that = this;
switch (_that) {
case _FixedTextArgs() when $default != null:
return $default(_that.text,_that.fontSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedTextArgs extends FixedTextArgs {
  const _FixedTextArgs({required this.text, this.fontSize = 18.0}): super._();
  factory _FixedTextArgs.fromJson(Map<String, dynamic> json) => _$FixedTextArgsFromJson(json);

@override final  String text;
@override@JsonKey() final  double fontSize;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedTextArgs&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,fontSize);

@override
String toString() {
  return 'FixedTextArgs(text: $text, fontSize: $fontSize)';
}


}

/// @nodoc
abstract mixin class _$FixedTextArgsCopyWith<$Res> implements $FixedTextArgsCopyWith<$Res> {
  factory _$FixedTextArgsCopyWith(_FixedTextArgs value, $Res Function(_FixedTextArgs) _then) = __$FixedTextArgsCopyWithImpl;
@override @useResult
$Res call({
 String text, double fontSize
});




}
/// @nodoc
class __$FixedTextArgsCopyWithImpl<$Res>
    implements _$FixedTextArgsCopyWith<$Res> {
  __$FixedTextArgsCopyWithImpl(this._self, this._then);

  final _FixedTextArgs _self;
  final $Res Function(_FixedTextArgs) _then;

/// Create a copy of FixedTextArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? fontSize = null,}) {
  return _then(_FixedTextArgs(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
