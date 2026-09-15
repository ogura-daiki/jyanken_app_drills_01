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
mixin _$FixedScopeArgs {

 WidgetEntity? get child; ScopeDefinition get variables;
/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedScopeArgsCopyWith<FixedScopeArgs> get copyWith => _$FixedScopeArgsCopyWithImpl<FixedScopeArgs>(this as FixedScopeArgs, _$identity);

  /// Serializes this FixedScopeArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedScopeArgs&&(identical(other.child, child) || other.child == child)&&(identical(other.variables, variables) || other.variables == variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,variables);

@override
String toString() {
  return 'FixedScopeArgs(child: $child, variables: $variables)';
}


}

/// @nodoc
abstract mixin class $FixedScopeArgsCopyWith<$Res>  {
  factory $FixedScopeArgsCopyWith(FixedScopeArgs value, $Res Function(FixedScopeArgs) _then) = _$FixedScopeArgsCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? child, ScopeDefinition variables
});


$WidgetEntityCopyWith<$Res>? get child;$ScopeDefinitionCopyWith<$Res> get variables;

}
/// @nodoc
class _$FixedScopeArgsCopyWithImpl<$Res>
    implements $FixedScopeArgsCopyWith<$Res> {
  _$FixedScopeArgsCopyWithImpl(this._self, this._then);

  final FixedScopeArgs _self;
  final $Res Function(FixedScopeArgs) _then;

/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child = freezed,Object? variables = null,}) {
  return _then(_self.copyWith(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as ScopeDefinition,
  ));
}
/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScopeDefinitionCopyWith<$Res> get variables {
  
  return $ScopeDefinitionCopyWith<$Res>(_self.variables, (value) {
    return _then(_self.copyWith(variables: value));
  });
}
}


/// Adds pattern-matching-related methods to [FixedScopeArgs].
extension FixedScopeArgsPatterns on FixedScopeArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedScopeArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedScopeArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedScopeArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedScopeArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedScopeArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedScopeArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetEntity? child,  ScopeDefinition variables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedScopeArgs() when $default != null:
return $default(_that.child,_that.variables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetEntity? child,  ScopeDefinition variables)  $default,) {final _that = this;
switch (_that) {
case _FixedScopeArgs():
return $default(_that.child,_that.variables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetEntity? child,  ScopeDefinition variables)?  $default,) {final _that = this;
switch (_that) {
case _FixedScopeArgs() when $default != null:
return $default(_that.child,_that.variables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedScopeArgs extends FixedScopeArgs {
  const _FixedScopeArgs({this.child = null, this.variables = const ScopeDefinition(variables: [])}): super._();
  factory _FixedScopeArgs.fromJson(Map<String, dynamic> json) => _$FixedScopeArgsFromJson(json);

@override@JsonKey() final  WidgetEntity? child;
@override@JsonKey() final  ScopeDefinition variables;

/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedScopeArgsCopyWith<_FixedScopeArgs> get copyWith => __$FixedScopeArgsCopyWithImpl<_FixedScopeArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedScopeArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedScopeArgs&&(identical(other.child, child) || other.child == child)&&(identical(other.variables, variables) || other.variables == variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,variables);

@override
String toString() {
  return 'FixedScopeArgs(child: $child, variables: $variables)';
}


}

/// @nodoc
abstract mixin class _$FixedScopeArgsCopyWith<$Res> implements $FixedScopeArgsCopyWith<$Res> {
  factory _$FixedScopeArgsCopyWith(_FixedScopeArgs value, $Res Function(_FixedScopeArgs) _then) = __$FixedScopeArgsCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntity? child, ScopeDefinition variables
});


@override $WidgetEntityCopyWith<$Res>? get child;@override $ScopeDefinitionCopyWith<$Res> get variables;

}
/// @nodoc
class __$FixedScopeArgsCopyWithImpl<$Res>
    implements _$FixedScopeArgsCopyWith<$Res> {
  __$FixedScopeArgsCopyWithImpl(this._self, this._then);

  final _FixedScopeArgs _self;
  final $Res Function(_FixedScopeArgs) _then;

/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child = freezed,Object? variables = null,}) {
  return _then(_FixedScopeArgs(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as ScopeDefinition,
  ));
}

/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}/// Create a copy of FixedScopeArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScopeDefinitionCopyWith<$Res> get variables {
  
  return $ScopeDefinitionCopyWith<$Res>(_self.variables, (value) {
    return _then(_self.copyWith(variables: value));
  });
}
}

// dart format on
