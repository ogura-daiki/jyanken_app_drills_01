// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scope_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScopeDefinition {

 List<Variable> get variables;
/// Create a copy of ScopeDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScopeDefinitionCopyWith<ScopeDefinition> get copyWith => _$ScopeDefinitionCopyWithImpl<ScopeDefinition>(this as ScopeDefinition, _$identity);

  /// Serializes this ScopeDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScopeDefinition&&const DeepCollectionEquality().equals(other.variables, variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(variables));

@override
String toString() {
  return 'ScopeDefinition(variables: $variables)';
}


}

/// @nodoc
abstract mixin class $ScopeDefinitionCopyWith<$Res>  {
  factory $ScopeDefinitionCopyWith(ScopeDefinition value, $Res Function(ScopeDefinition) _then) = _$ScopeDefinitionCopyWithImpl;
@useResult
$Res call({
 List<Variable> variables
});




}
/// @nodoc
class _$ScopeDefinitionCopyWithImpl<$Res>
    implements $ScopeDefinitionCopyWith<$Res> {
  _$ScopeDefinitionCopyWithImpl(this._self, this._then);

  final ScopeDefinition _self;
  final $Res Function(ScopeDefinition) _then;

/// Create a copy of ScopeDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variables = null,}) {
  return _then(_self.copyWith(
variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as List<Variable>,
  ));
}

}


/// Adds pattern-matching-related methods to [ScopeDefinition].
extension ScopeDefinitionPatterns on ScopeDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScopeDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScopeDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScopeDefinition value)  $default,){
final _that = this;
switch (_that) {
case _ScopeDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScopeDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _ScopeDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Variable> variables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScopeDefinition() when $default != null:
return $default(_that.variables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Variable> variables)  $default,) {final _that = this;
switch (_that) {
case _ScopeDefinition():
return $default(_that.variables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Variable> variables)?  $default,) {final _that = this;
switch (_that) {
case _ScopeDefinition() when $default != null:
return $default(_that.variables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScopeDefinition extends ScopeDefinition {
  const _ScopeDefinition({required final  List<Variable> variables}): _variables = variables,super._();
  factory _ScopeDefinition.fromJson(Map<String, dynamic> json) => _$ScopeDefinitionFromJson(json);

 final  List<Variable> _variables;
@override List<Variable> get variables {
  if (_variables is EqualUnmodifiableListView) return _variables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variables);
}


/// Create a copy of ScopeDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScopeDefinitionCopyWith<_ScopeDefinition> get copyWith => __$ScopeDefinitionCopyWithImpl<_ScopeDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScopeDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScopeDefinition&&const DeepCollectionEquality().equals(other._variables, _variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_variables));

@override
String toString() {
  return 'ScopeDefinition(variables: $variables)';
}


}

/// @nodoc
abstract mixin class _$ScopeDefinitionCopyWith<$Res> implements $ScopeDefinitionCopyWith<$Res> {
  factory _$ScopeDefinitionCopyWith(_ScopeDefinition value, $Res Function(_ScopeDefinition) _then) = __$ScopeDefinitionCopyWithImpl;
@override @useResult
$Res call({
 List<Variable> variables
});




}
/// @nodoc
class __$ScopeDefinitionCopyWithImpl<$Res>
    implements _$ScopeDefinitionCopyWith<$Res> {
  __$ScopeDefinitionCopyWithImpl(this._self, this._then);

  final _ScopeDefinition _self;
  final $Res Function(_ScopeDefinition) _then;

/// Create a copy of ScopeDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variables = null,}) {
  return _then(_ScopeDefinition(
variables: null == variables ? _self._variables : variables // ignore: cast_nullable_to_non_nullable
as List<Variable>,
  ));
}


}

// dart format on
