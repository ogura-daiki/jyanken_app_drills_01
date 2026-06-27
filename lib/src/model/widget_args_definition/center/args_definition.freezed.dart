// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'args_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CenterArgsDefinition {

 WidgetEntity? get value;
/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CenterArgsDefinitionCopyWith<CenterArgsDefinition> get copyWith => _$CenterArgsDefinitionCopyWithImpl<CenterArgsDefinition>(this as CenterArgsDefinition, _$identity);

  /// Serializes this CenterArgsDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CenterArgsDefinition&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CenterArgsDefinition(value: $value)';
}


}

/// @nodoc
abstract mixin class $CenterArgsDefinitionCopyWith<$Res>  {
  factory $CenterArgsDefinitionCopyWith(CenterArgsDefinition value, $Res Function(CenterArgsDefinition) _then) = _$CenterArgsDefinitionCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? value
});


$WidgetEntityCopyWith<$Res>? get value;

}
/// @nodoc
class _$CenterArgsDefinitionCopyWithImpl<$Res>
    implements $CenterArgsDefinitionCopyWith<$Res> {
  _$CenterArgsDefinitionCopyWithImpl(this._self, this._then);

  final CenterArgsDefinition _self;
  final $Res Function(CenterArgsDefinition) _then;

/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(CenterArgsDefinition(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}
/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get value {
    if (_self.value == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.value!, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}


/// Adds pattern-matching-related methods to [CenterArgsDefinition].
extension CenterArgsDefinitionPatterns on CenterArgsDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CenterArgsDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CenterArgsDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CenterArgsDefinition value)  $default,){
final _that = this;
switch (_that) {
case _CenterArgsDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CenterArgsDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _CenterArgsDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetEntity? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CenterArgsDefinition() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetEntity? value)  $default,) {final _that = this;
switch (_that) {
case _CenterArgsDefinition():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetEntity? value)?  $default,) {final _that = this;
switch (_that) {
case _CenterArgsDefinition() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CenterArgsDefinition extends CenterArgsDefinition {
  const _CenterArgsDefinition({this.value = null}): super._();
  factory _CenterArgsDefinition.fromJson(Map<String, dynamic> json) => _$CenterArgsDefinitionFromJson(json);

@override@JsonKey() final  WidgetEntity? value;

/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CenterArgsDefinitionCopyWith<_CenterArgsDefinition> get copyWith => __$CenterArgsDefinitionCopyWithImpl<_CenterArgsDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CenterArgsDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CenterArgsDefinition&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CenterArgsDefinition(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CenterArgsDefinitionCopyWith<$Res> implements $CenterArgsDefinitionCopyWith<$Res> {
  factory _$CenterArgsDefinitionCopyWith(_CenterArgsDefinition value, $Res Function(_CenterArgsDefinition) _then) = __$CenterArgsDefinitionCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntity? value
});


@override $WidgetEntityCopyWith<$Res>? get value;

}
/// @nodoc
class __$CenterArgsDefinitionCopyWithImpl<$Res>
    implements _$CenterArgsDefinitionCopyWith<$Res> {
  __$CenterArgsDefinitionCopyWithImpl(this._self, this._then);

  final _CenterArgsDefinition _self;
  final $Res Function(_CenterArgsDefinition) _then;

/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_CenterArgsDefinition(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of CenterArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get value {
    if (_self.value == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.value!, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
