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
mixin _$FixedExpandedArgs {

 int get flex; WidgetEntity? get child;
/// Create a copy of FixedExpandedArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedExpandedArgsCopyWith<FixedExpandedArgs> get copyWith => _$FixedExpandedArgsCopyWithImpl<FixedExpandedArgs>(this as FixedExpandedArgs, _$identity);

  /// Serializes this FixedExpandedArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedExpandedArgs&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,child);

@override
String toString() {
  return 'FixedExpandedArgs(flex: $flex, child: $child)';
}


}

/// @nodoc
abstract mixin class $FixedExpandedArgsCopyWith<$Res>  {
  factory $FixedExpandedArgsCopyWith(FixedExpandedArgs value, $Res Function(FixedExpandedArgs) _then) = _$FixedExpandedArgsCopyWithImpl;
@useResult
$Res call({
 int flex, WidgetEntity? child
});


$WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class _$FixedExpandedArgsCopyWithImpl<$Res>
    implements $FixedExpandedArgsCopyWith<$Res> {
  _$FixedExpandedArgsCopyWithImpl(this._self, this._then);

  final FixedExpandedArgs _self;
  final $Res Function(FixedExpandedArgs) _then;

/// Create a copy of FixedExpandedArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flex = null,Object? child = freezed,}) {
  return _then(_self.copyWith(
flex: null == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}
/// Create a copy of FixedExpandedArgs
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
}
}


/// Adds pattern-matching-related methods to [FixedExpandedArgs].
extension FixedExpandedArgsPatterns on FixedExpandedArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedExpandedArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedExpandedArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedExpandedArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedExpandedArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedExpandedArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedExpandedArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int flex,  WidgetEntity? child)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedExpandedArgs() when $default != null:
return $default(_that.flex,_that.child);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int flex,  WidgetEntity? child)  $default,) {final _that = this;
switch (_that) {
case _FixedExpandedArgs():
return $default(_that.flex,_that.child);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int flex,  WidgetEntity? child)?  $default,) {final _that = this;
switch (_that) {
case _FixedExpandedArgs() when $default != null:
return $default(_that.flex,_that.child);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedExpandedArgs extends FixedExpandedArgs {
  const _FixedExpandedArgs({this.flex = 1, this.child = null}): super._();
  factory _FixedExpandedArgs.fromJson(Map<String, dynamic> json) => _$FixedExpandedArgsFromJson(json);

@override@JsonKey() final  int flex;
@override@JsonKey() final  WidgetEntity? child;

/// Create a copy of FixedExpandedArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedExpandedArgsCopyWith<_FixedExpandedArgs> get copyWith => __$FixedExpandedArgsCopyWithImpl<_FixedExpandedArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedExpandedArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedExpandedArgs&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,child);

@override
String toString() {
  return 'FixedExpandedArgs(flex: $flex, child: $child)';
}


}

/// @nodoc
abstract mixin class _$FixedExpandedArgsCopyWith<$Res> implements $FixedExpandedArgsCopyWith<$Res> {
  factory _$FixedExpandedArgsCopyWith(_FixedExpandedArgs value, $Res Function(_FixedExpandedArgs) _then) = __$FixedExpandedArgsCopyWithImpl;
@override @useResult
$Res call({
 int flex, WidgetEntity? child
});


@override $WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class __$FixedExpandedArgsCopyWithImpl<$Res>
    implements _$FixedExpandedArgsCopyWith<$Res> {
  __$FixedExpandedArgsCopyWithImpl(this._self, this._then);

  final _FixedExpandedArgs _self;
  final $Res Function(_FixedExpandedArgs) _then;

/// Create a copy of FixedExpandedArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flex = null,Object? child = freezed,}) {
  return _then(_FixedExpandedArgs(
flex: null == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of FixedExpandedArgs
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
}
}

// dart format on
