// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_entity_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetEntityId {

 int get value;
/// Create a copy of WidgetEntityId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<WidgetEntityId> get copyWith => _$WidgetEntityIdCopyWithImpl<WidgetEntityId>(this as WidgetEntityId, _$identity);

  /// Serializes this WidgetEntityId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WidgetEntityId(value: $value)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityIdCopyWith<$Res>  {
  factory $WidgetEntityIdCopyWith(WidgetEntityId value, $Res Function(WidgetEntityId) _then) = _$WidgetEntityIdCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$WidgetEntityIdCopyWithImpl<$Res>
    implements $WidgetEntityIdCopyWith<$Res> {
  _$WidgetEntityIdCopyWithImpl(this._self, this._then);

  final WidgetEntityId _self;
  final $Res Function(WidgetEntityId) _then;

/// Create a copy of WidgetEntityId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetEntityId].
extension WidgetEntityIdPatterns on WidgetEntityId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetEntityId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetEntityId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetEntityId value)  $default,){
final _that = this;
switch (_that) {
case _WidgetEntityId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetEntityId value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetEntityId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetEntityId() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value)  $default,) {final _that = this;
switch (_that) {
case _WidgetEntityId():
return $default(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value)?  $default,) {final _that = this;
switch (_that) {
case _WidgetEntityId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WidgetEntityId extends WidgetEntityId {
  const _WidgetEntityId(this.value): super._();
  factory _WidgetEntityId.fromJson(Map<String, dynamic> json) => _$WidgetEntityIdFromJson(json);

@override final  int value;

/// Create a copy of WidgetEntityId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetEntityIdCopyWith<_WidgetEntityId> get copyWith => __$WidgetEntityIdCopyWithImpl<_WidgetEntityId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetEntityId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WidgetEntityId(value: $value)';
}


}

/// @nodoc
abstract mixin class _$WidgetEntityIdCopyWith<$Res> implements $WidgetEntityIdCopyWith<$Res> {
  factory _$WidgetEntityIdCopyWith(_WidgetEntityId value, $Res Function(_WidgetEntityId) _then) = __$WidgetEntityIdCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$WidgetEntityIdCopyWithImpl<$Res>
    implements _$WidgetEntityIdCopyWith<$Res> {
  __$WidgetEntityIdCopyWithImpl(this._self, this._then);

  final _WidgetEntityId _self;
  final $Res Function(_WidgetEntityId) _then;

/// Create a copy of WidgetEntityId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_WidgetEntityId(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
