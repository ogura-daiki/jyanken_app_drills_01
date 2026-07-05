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
mixin _$FixedCenterArgs {

 WidgetEntity? get child;
/// Create a copy of FixedCenterArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedCenterArgsCopyWith<FixedCenterArgs> get copyWith => _$FixedCenterArgsCopyWithImpl<FixedCenterArgs>(this as FixedCenterArgs, _$identity);

  /// Serializes this FixedCenterArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedCenterArgs&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child);

@override
String toString() {
  return 'FixedCenterArgs(child: $child)';
}


}

/// @nodoc
abstract mixin class $FixedCenterArgsCopyWith<$Res>  {
  factory $FixedCenterArgsCopyWith(FixedCenterArgs value, $Res Function(FixedCenterArgs) _then) = _$FixedCenterArgsCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? child
});


$WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class _$FixedCenterArgsCopyWithImpl<$Res>
    implements $FixedCenterArgsCopyWith<$Res> {
  _$FixedCenterArgsCopyWithImpl(this._self, this._then);

  final FixedCenterArgs _self;
  final $Res Function(FixedCenterArgs) _then;

/// Create a copy of FixedCenterArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child = freezed,}) {
  return _then(_self.copyWith(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}
/// Create a copy of FixedCenterArgs
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


/// Adds pattern-matching-related methods to [FixedCenterArgs].
extension FixedCenterArgsPatterns on FixedCenterArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedCenterArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedCenterArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedCenterArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedCenterArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedCenterArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedCenterArgs() when $default != null:
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
case _FixedCenterArgs() when $default != null:
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
case _FixedCenterArgs():
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
case _FixedCenterArgs() when $default != null:
return $default(_that.child);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedCenterArgs extends FixedCenterArgs {
  const _FixedCenterArgs({this.child = null}): super._();
  factory _FixedCenterArgs.fromJson(Map<String, dynamic> json) => _$FixedCenterArgsFromJson(json);

@override@JsonKey() final  WidgetEntity? child;

/// Create a copy of FixedCenterArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedCenterArgsCopyWith<_FixedCenterArgs> get copyWith => __$FixedCenterArgsCopyWithImpl<_FixedCenterArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedCenterArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedCenterArgs&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child);

@override
String toString() {
  return 'FixedCenterArgs(child: $child)';
}


}

/// @nodoc
abstract mixin class _$FixedCenterArgsCopyWith<$Res> implements $FixedCenterArgsCopyWith<$Res> {
  factory _$FixedCenterArgsCopyWith(_FixedCenterArgs value, $Res Function(_FixedCenterArgs) _then) = __$FixedCenterArgsCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntity? child
});


@override $WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class __$FixedCenterArgsCopyWithImpl<$Res>
    implements _$FixedCenterArgsCopyWith<$Res> {
  __$FixedCenterArgsCopyWithImpl(this._self, this._then);

  final _FixedCenterArgs _self;
  final $Res Function(_FixedCenterArgs) _then;

/// Create a copy of FixedCenterArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child = freezed,}) {
  return _then(_FixedCenterArgs(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of FixedCenterArgs
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
