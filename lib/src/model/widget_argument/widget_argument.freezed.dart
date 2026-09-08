// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_argument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetArgument {

 ArgumentDefinition get definition; VariableValue get value;
/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgumentCopyWith<WidgetArgument> get copyWith => _$WidgetArgumentCopyWithImpl<WidgetArgument>(this as WidgetArgument, _$identity);

  /// Serializes this WidgetArgument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgument&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,definition,value);

@override
String toString() {
  return 'WidgetArgument(definition: $definition, value: $value)';
}


}

/// @nodoc
abstract mixin class $WidgetArgumentCopyWith<$Res>  {
  factory $WidgetArgumentCopyWith(WidgetArgument value, $Res Function(WidgetArgument) _then) = _$WidgetArgumentCopyWithImpl;
@useResult
$Res call({
 ArgumentDefinition definition, VariableValue value
});


$ArgumentDefinitionCopyWith<$Res> get definition;$VariableValueCopyWith<$Res> get value;

}
/// @nodoc
class _$WidgetArgumentCopyWithImpl<$Res>
    implements $WidgetArgumentCopyWith<$Res> {
  _$WidgetArgumentCopyWithImpl(this._self, this._then);

  final WidgetArgument _self;
  final $Res Function(WidgetArgument) _then;

/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? definition = null,Object? value = null,}) {
  return _then(_self.copyWith(
definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as ArgumentDefinition,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}
/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArgumentDefinitionCopyWith<$Res> get definition {
  
  return $ArgumentDefinitionCopyWith<$Res>(_self.definition, (value) {
    return _then(_self.copyWith(definition: value));
  });
}/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariableValueCopyWith<$Res> get value {
  
  return $VariableValueCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}


/// Adds pattern-matching-related methods to [WidgetArgument].
extension WidgetArgumentPatterns on WidgetArgument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetArgument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetArgument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetArgument value)  $default,){
final _that = this;
switch (_that) {
case _WidgetArgument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetArgument value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetArgument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ArgumentDefinition definition,  VariableValue value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetArgument() when $default != null:
return $default(_that.definition,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ArgumentDefinition definition,  VariableValue value)  $default,) {final _that = this;
switch (_that) {
case _WidgetArgument():
return $default(_that.definition,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ArgumentDefinition definition,  VariableValue value)?  $default,) {final _that = this;
switch (_that) {
case _WidgetArgument() when $default != null:
return $default(_that.definition,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WidgetArgument extends WidgetArgument {
   _WidgetArgument({required this.definition, required this.value}): assert(definition.defaultValue.runtimeType == value.runtimeType),super._();
  factory _WidgetArgument.fromJson(Map<String, dynamic> json) => _$WidgetArgumentFromJson(json);

@override final  ArgumentDefinition definition;
@override final  VariableValue value;

/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetArgumentCopyWith<_WidgetArgument> get copyWith => __$WidgetArgumentCopyWithImpl<_WidgetArgument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetArgument&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,definition,value);

@override
String toString() {
  return 'WidgetArgument(definition: $definition, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WidgetArgumentCopyWith<$Res> implements $WidgetArgumentCopyWith<$Res> {
  factory _$WidgetArgumentCopyWith(_WidgetArgument value, $Res Function(_WidgetArgument) _then) = __$WidgetArgumentCopyWithImpl;
@override @useResult
$Res call({
 ArgumentDefinition definition, VariableValue value
});


@override $ArgumentDefinitionCopyWith<$Res> get definition;@override $VariableValueCopyWith<$Res> get value;

}
/// @nodoc
class __$WidgetArgumentCopyWithImpl<$Res>
    implements _$WidgetArgumentCopyWith<$Res> {
  __$WidgetArgumentCopyWithImpl(this._self, this._then);

  final _WidgetArgument _self;
  final $Res Function(_WidgetArgument) _then;

/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? definition = null,Object? value = null,}) {
  return _then(_WidgetArgument(
definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as ArgumentDefinition,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as VariableValue,
  ));
}

/// Create a copy of WidgetArgument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArgumentDefinitionCopyWith<$Res> get definition {
  
  return $ArgumentDefinitionCopyWith<$Res>(_self.definition, (value) {
    return _then(_self.copyWith(definition: value));
  });
}/// Create a copy of WidgetArgument
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
