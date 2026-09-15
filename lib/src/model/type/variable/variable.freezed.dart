// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Variable {

 String get name; VariableValue get initialValue; VariableValue get value;
/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableCopyWith<Variable> get copyWith => _$VariableCopyWithImpl<Variable>(this as Variable, _$identity);

  /// Serializes this Variable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variable&&(identical(other.name, name) || other.name == name)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,initialValue,value);

@override
String toString() {
  return 'Variable(name: $name, initialValue: $initialValue, value: $value)';
}


}

/// @nodoc
abstract mixin class $VariableCopyWith<$Res>  {
  factory $VariableCopyWith(Variable value, $Res Function(Variable) _then) = _$VariableCopyWithImpl;
@useResult
$Res call({
 String name, VariableValue initialValue, VariableValue value
});


$VariableValueCopyWith<$Res> get initialValue;$VariableValueCopyWith<$Res> get value;

}
/// @nodoc
class _$VariableCopyWithImpl<$Res>
    implements $VariableCopyWith<$Res> {
  _$VariableCopyWithImpl(this._self, this._then);

  final Variable _self;
  final $Res Function(Variable) _then;

/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? initialValue = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialValue: null == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as VariableValue,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}
/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get initialValue {
  
  return $VariableValueCopyWith<$Res>(_self.initialValue, (value) {
    return _then(_self.copyWith(initialValue: value));
  });
}/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get value {
  
  return $VariableValueCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}


/// Adds pattern-matching-related methods to [Variable].
extension VariablePatterns on Variable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Variable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Variable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Variable value)  $default,){
final _that = this;
switch (_that) {
case _Variable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Variable value)?  $default,){
final _that = this;
switch (_that) {
case _Variable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  VariableValue initialValue,  VariableValue value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Variable() when $default != null:
return $default(_that.name,_that.initialValue,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  VariableValue initialValue,  VariableValue value)  $default,) {final _that = this;
switch (_that) {
case _Variable():
return $default(_that.name,_that.initialValue,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  VariableValue initialValue,  VariableValue value)?  $default,) {final _that = this;
switch (_that) {
case _Variable() when $default != null:
return $default(_that.name,_that.initialValue,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Variable extends Variable {
  const _Variable({required this.name, required this.initialValue, required this.value}): super._();
  factory _Variable.fromJson(Map<String, dynamic> json) => _$VariableFromJson(json);

@override final  String name;
@override final  VariableValue initialValue;
@override final  VariableValue value;

/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariableCopyWith<_Variable> get copyWith => __$VariableCopyWithImpl<_Variable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variable&&(identical(other.name, name) || other.name == name)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,initialValue,value);

@override
String toString() {
  return 'Variable(name: $name, initialValue: $initialValue, value: $value)';
}


}

/// @nodoc
abstract mixin class _$VariableCopyWith<$Res> implements $VariableCopyWith<$Res> {
  factory _$VariableCopyWith(_Variable value, $Res Function(_Variable) _then) = __$VariableCopyWithImpl;
@override @useResult
$Res call({
 String name, VariableValue initialValue, VariableValue value
});


@override $VariableValueCopyWith<$Res> get initialValue;@override $VariableValueCopyWith<$Res> get value;

}
/// @nodoc
class __$VariableCopyWithImpl<$Res>
    implements _$VariableCopyWith<$Res> {
  __$VariableCopyWithImpl(this._self, this._then);

  final _Variable _self;
  final $Res Function(_Variable) _then;

/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? initialValue = null,Object? value = null,}) {
  return _then(_Variable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialValue: null == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as VariableValue,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}

/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get initialValue {
  
  return $VariableValueCopyWith<$Res>(_self.initialValue, (value) {
    return _then(_self.copyWith(initialValue: value));
  });
}/// Create a copy of Variable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get value {
  
  return $VariableValueCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
