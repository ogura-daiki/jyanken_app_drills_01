// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'argument_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArgumentDefinition {

 String get name; VariableValue get defaultValue;
/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArgumentDefinitionCopyWith<ArgumentDefinition> get copyWith => _$ArgumentDefinitionCopyWithImpl<ArgumentDefinition>(this as ArgumentDefinition, _$identity);

  /// Serializes this ArgumentDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArgumentDefinition&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'ArgumentDefinition(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $ArgumentDefinitionCopyWith<$Res>  {
  factory $ArgumentDefinitionCopyWith(ArgumentDefinition value, $Res Function(ArgumentDefinition) _then) = _$ArgumentDefinitionCopyWithImpl;
@useResult
$Res call({
 String name, VariableValue defaultValue
});


$VariableValueCopyWith<$Res> get defaultValue;

}
/// @nodoc
class _$ArgumentDefinitionCopyWithImpl<$Res>
    implements $ArgumentDefinitionCopyWith<$Res> {
  _$ArgumentDefinitionCopyWithImpl(this._self, this._then);

  final ArgumentDefinition _self;
  final $Res Function(ArgumentDefinition) _then;

/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}
/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get defaultValue {
  
  return $VariableValueCopyWith<$Res>(_self.defaultValue, (value) {
    return _then(_self.copyWith(defaultValue: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArgumentDefinition].
extension ArgumentDefinitionPatterns on ArgumentDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArgumentDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArgumentDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArgumentDefinition value)  $default,){
final _that = this;
switch (_that) {
case _ArgumentDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArgumentDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _ArgumentDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  VariableValue defaultValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArgumentDefinition() when $default != null:
return $default(_that.name,_that.defaultValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  VariableValue defaultValue)  $default,) {final _that = this;
switch (_that) {
case _ArgumentDefinition():
return $default(_that.name,_that.defaultValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  VariableValue defaultValue)?  $default,) {final _that = this;
switch (_that) {
case _ArgumentDefinition() when $default != null:
return $default(_that.name,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArgumentDefinition extends ArgumentDefinition {
  const _ArgumentDefinition({required this.name, required this.defaultValue}): super._();
  factory _ArgumentDefinition.fromJson(Map<String, dynamic> json) => _$ArgumentDefinitionFromJson(json);

@override final  String name;
@override final  VariableValue defaultValue;

/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArgumentDefinitionCopyWith<_ArgumentDefinition> get copyWith => __$ArgumentDefinitionCopyWithImpl<_ArgumentDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArgumentDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArgumentDefinition&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'ArgumentDefinition(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class _$ArgumentDefinitionCopyWith<$Res> implements $ArgumentDefinitionCopyWith<$Res> {
  factory _$ArgumentDefinitionCopyWith(_ArgumentDefinition value, $Res Function(_ArgumentDefinition) _then) = __$ArgumentDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String name, VariableValue defaultValue
});


@override $VariableValueCopyWith<$Res> get defaultValue;

}
/// @nodoc
class __$ArgumentDefinitionCopyWithImpl<$Res>
    implements _$ArgumentDefinitionCopyWith<$Res> {
  __$ArgumentDefinitionCopyWithImpl(this._self, this._then);

  final _ArgumentDefinition _self;
  final $Res Function(_ArgumentDefinition) _then;

/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(_ArgumentDefinition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}

/// Create a copy of ArgumentDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get defaultValue {
  
  return $VariableValueCopyWith<$Res>(_self.defaultValue, (value) {
    return _then(_self.copyWith(defaultValue: value));
  });
}
}

// dart format on
