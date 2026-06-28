// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetArg {

 WidgetArgsType get type; String get name;
/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgCopyWith<WidgetArg> get copyWith => _$WidgetArgCopyWithImpl<WidgetArg>(this as WidgetArg, _$identity);

  /// Serializes this WidgetArg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArg&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name);

@override
String toString() {
  return 'WidgetArg(type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class $WidgetArgCopyWith<$Res>  {
  factory $WidgetArgCopyWith(WidgetArg value, $Res Function(WidgetArg) _then) = _$WidgetArgCopyWithImpl;
@useResult
$Res call({
 WidgetArgsType type, String name
});




}
/// @nodoc
class _$WidgetArgCopyWithImpl<$Res>
    implements $WidgetArgCopyWith<$Res> {
  _$WidgetArgCopyWithImpl(this._self, this._then);

  final WidgetArg _self;
  final $Res Function(WidgetArg) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetArgsType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetArg].
extension WidgetArgPatterns on WidgetArg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetArg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetArg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetArg value)  $default,){
final _that = this;
switch (_that) {
case _WidgetArg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetArg value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetArg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetArgsType type,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetArg() when $default != null:
return $default(_that.type,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetArgsType type,  String name)  $default,) {final _that = this;
switch (_that) {
case _WidgetArg():
return $default(_that.type,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetArgsType type,  String name)?  $default,) {final _that = this;
switch (_that) {
case _WidgetArg() when $default != null:
return $default(_that.type,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WidgetArg extends WidgetArg {
  const _WidgetArg({required this.type, required this.name}): super._();
  factory _WidgetArg.fromJson(Map<String, dynamic> json) => _$WidgetArgFromJson(json);

@override final  WidgetArgsType type;
@override final  String name;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetArgCopyWith<_WidgetArg> get copyWith => __$WidgetArgCopyWithImpl<_WidgetArg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetArg&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name);

@override
String toString() {
  return 'WidgetArg(type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class _$WidgetArgCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory _$WidgetArgCopyWith(_WidgetArg value, $Res Function(_WidgetArg) _then) = __$WidgetArgCopyWithImpl;
@override @useResult
$Res call({
 WidgetArgsType type, String name
});




}
/// @nodoc
class __$WidgetArgCopyWithImpl<$Res>
    implements _$WidgetArgCopyWith<$Res> {
  __$WidgetArgCopyWithImpl(this._self, this._then);

  final _WidgetArg _self;
  final $Res Function(_WidgetArg) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,}) {
  return _then(_WidgetArg(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetArgsType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
