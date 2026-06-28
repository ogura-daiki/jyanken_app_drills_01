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
mixin _$FixedContainerArgs {

 double? get width; double? get height; WidgetEntity? get child;
/// Create a copy of FixedContainerArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedContainerArgsCopyWith<FixedContainerArgs> get copyWith => _$FixedContainerArgsCopyWithImpl<FixedContainerArgs>(this as FixedContainerArgs, _$identity);

  /// Serializes this FixedContainerArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedContainerArgs&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,child);

@override
String toString() {
  return 'FixedContainerArgs(width: $width, height: $height, child: $child)';
}


}

/// @nodoc
abstract mixin class $FixedContainerArgsCopyWith<$Res>  {
  factory $FixedContainerArgsCopyWith(FixedContainerArgs value, $Res Function(FixedContainerArgs) _then) = _$FixedContainerArgsCopyWithImpl;
@useResult
$Res call({
 double? width, double? height, WidgetEntity? child
});


$WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class _$FixedContainerArgsCopyWithImpl<$Res>
    implements $FixedContainerArgsCopyWith<$Res> {
  _$FixedContainerArgsCopyWithImpl(this._self, this._then);

  final FixedContainerArgs _self;
  final $Res Function(FixedContainerArgs) _then;

/// Create a copy of FixedContainerArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = freezed,Object? height = freezed,Object? child = freezed,}) {
  return _then(_self.copyWith(
width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}
/// Create a copy of FixedContainerArgs
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


/// Adds pattern-matching-related methods to [FixedContainerArgs].
extension FixedContainerArgsPatterns on FixedContainerArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedContainerArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedContainerArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedContainerArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedContainerArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedContainerArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedContainerArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? width,  double? height,  WidgetEntity? child)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedContainerArgs() when $default != null:
return $default(_that.width,_that.height,_that.child);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? width,  double? height,  WidgetEntity? child)  $default,) {final _that = this;
switch (_that) {
case _FixedContainerArgs():
return $default(_that.width,_that.height,_that.child);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? width,  double? height,  WidgetEntity? child)?  $default,) {final _that = this;
switch (_that) {
case _FixedContainerArgs() when $default != null:
return $default(_that.width,_that.height,_that.child);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedContainerArgs extends FixedContainerArgs {
  const _FixedContainerArgs({this.width = null, this.height = null, this.child = null}): super._();
  factory _FixedContainerArgs.fromJson(Map<String, dynamic> json) => _$FixedContainerArgsFromJson(json);

@override@JsonKey() final  double? width;
@override@JsonKey() final  double? height;
@override@JsonKey() final  WidgetEntity? child;

/// Create a copy of FixedContainerArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedContainerArgsCopyWith<_FixedContainerArgs> get copyWith => __$FixedContainerArgsCopyWithImpl<_FixedContainerArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedContainerArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedContainerArgs&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,child);

@override
String toString() {
  return 'FixedContainerArgs(width: $width, height: $height, child: $child)';
}


}

/// @nodoc
abstract mixin class _$FixedContainerArgsCopyWith<$Res> implements $FixedContainerArgsCopyWith<$Res> {
  factory _$FixedContainerArgsCopyWith(_FixedContainerArgs value, $Res Function(_FixedContainerArgs) _then) = __$FixedContainerArgsCopyWithImpl;
@override @useResult
$Res call({
 double? width, double? height, WidgetEntity? child
});


@override $WidgetEntityCopyWith<$Res>? get child;

}
/// @nodoc
class __$FixedContainerArgsCopyWithImpl<$Res>
    implements _$FixedContainerArgsCopyWith<$Res> {
  __$FixedContainerArgsCopyWithImpl(this._self, this._then);

  final _FixedContainerArgs _self;
  final $Res Function(_FixedContainerArgs) _then;

/// Create a copy of FixedContainerArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = freezed,Object? height = freezed,Object? child = freezed,}) {
  return _then(_FixedContainerArgs(
width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of FixedContainerArgs
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
