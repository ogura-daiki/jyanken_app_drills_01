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
mixin _$FixedRootArgs {

 WidgetEntity? get child;
/// Create a copy of FixedRootArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedRootArgsCopyWith<FixedRootArgs> get copyWith => _$FixedRootArgsCopyWithImpl<FixedRootArgs>(this as FixedRootArgs, _$identity);

  /// Serializes this FixedRootArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedRootArgs&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child);

@override
String toString() {
  return 'FixedRootArgs(child: $child)';
}


}

/// @nodoc
abstract mixin class $FixedRootArgsCopyWith<$Res>  {
  factory $FixedRootArgsCopyWith(FixedRootArgs value, $Res Function(FixedRootArgs) _then) = _$FixedRootArgsCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? child
});


$WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class _$FixedRootArgsCopyWithImpl<$Res>
    implements $FixedRootArgsCopyWith<$Res> {
  _$FixedRootArgsCopyWithImpl(this._self, this._then);

  final FixedRootArgs _self;
  final $Res Function(FixedRootArgs) _then;

/// Create a copy of FixedRootArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child = freezed,}) {
  return _then(_self.copyWith(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}
/// Create a copy of FixedRootArgs
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


/// Adds pattern-matching-related methods to [FixedRootArgs].
extension FixedRootArgsPatterns on FixedRootArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedRootArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedRootArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedRootArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedRootArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedRootArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedRootArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetEntity? child)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedRootArgs() when $default != null:
return $default(_that.child);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetEntity? child)  $default,) {final _that = this;
switch (_that) {
case _FixedRootArgs():
return $default(_that.child);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetEntity? child)?  $default,) {final _that = this;
switch (_that) {
case _FixedRootArgs() when $default != null:
return $default(_that.child);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedRootArgs extends FixedRootArgs {
  const _FixedRootArgs({this.child = null}): super._();
  factory _FixedRootArgs.fromJson(Map<String, dynamic> json) => _$FixedRootArgsFromJson(json);

@override@JsonKey() final  WidgetEntity? child;

/// Create a copy of FixedRootArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedRootArgsCopyWith<_FixedRootArgs> get copyWith => __$FixedRootArgsCopyWithImpl<_FixedRootArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedRootArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedRootArgs&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child);

@override
String toString() {
  return 'FixedRootArgs(child: $child)';
}


}

/// @nodoc
abstract mixin class _$FixedRootArgsCopyWith<$Res> implements $FixedRootArgsCopyWith<$Res> {
  factory _$FixedRootArgsCopyWith(_FixedRootArgs value, $Res Function(_FixedRootArgs) _then) = __$FixedRootArgsCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntity? child
});


@override $WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class __$FixedRootArgsCopyWithImpl<$Res>
    implements _$FixedRootArgsCopyWith<$Res> {
  __$FixedRootArgsCopyWithImpl(this._self, this._then);

  final _FixedRootArgs _self;
  final $Res Function(_FixedRootArgs) _then;

/// Create a copy of FixedRootArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child = freezed,}) {
  return _then(_FixedRootArgs(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of FixedRootArgs
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
