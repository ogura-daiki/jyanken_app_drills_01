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
mixin _$FixedAlignArgs {

 WidgetEntity? get child; AlignmentWrapper get alignment;
/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedAlignArgsCopyWith<FixedAlignArgs> get copyWith => _$FixedAlignArgsCopyWithImpl<FixedAlignArgs>(this as FixedAlignArgs, _$identity);

  /// Serializes this FixedAlignArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedAlignArgs&&(identical(other.child, child) || other.child == child)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,alignment);

@override
String toString() {
  return 'FixedAlignArgs(child: $child, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class $FixedAlignArgsCopyWith<$Res>  {
  factory $FixedAlignArgsCopyWith(FixedAlignArgs value, $Res Function(FixedAlignArgs) _then) = _$FixedAlignArgsCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? child, AlignmentWrapper alignment
});


$WidgetEntityCopyWith<$Res>? get child;$AlignmentWrapperCopyWith<$Res> get alignment;

}
/// @nodoc
class _$FixedAlignArgsCopyWithImpl<$Res>
    implements $FixedAlignArgsCopyWith<$Res> {
  _$FixedAlignArgsCopyWithImpl(this._self, this._then);

  final FixedAlignArgs _self;
  final $Res Function(FixedAlignArgs) _then;

/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child = freezed,Object? alignment = null,}) {
  return _then(_self.copyWith(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as AlignmentWrapper,
  ));
}
/// Create a copy of FixedAlignArgs
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
}/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlignmentWrapperCopyWith<$Res> get alignment {
  
  return $AlignmentWrapperCopyWith<$Res>(_self.alignment, (value) {
    return _then(_self.copyWith(alignment: value));
  });
}
}


/// Adds pattern-matching-related methods to [FixedAlignArgs].
extension FixedAlignArgsPatterns on FixedAlignArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedAlignArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedAlignArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedAlignArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedAlignArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedAlignArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedAlignArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetEntity? child,  AlignmentWrapper alignment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedAlignArgs() when $default != null:
return $default(_that.child,_that.alignment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetEntity? child,  AlignmentWrapper alignment)  $default,) {final _that = this;
switch (_that) {
case _FixedAlignArgs():
return $default(_that.child,_that.alignment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetEntity? child,  AlignmentWrapper alignment)?  $default,) {final _that = this;
switch (_that) {
case _FixedAlignArgs() when $default != null:
return $default(_that.child,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedAlignArgs extends FixedAlignArgs {
  const _FixedAlignArgs({this.child = null, required this.alignment}): super._();
  factory _FixedAlignArgs.fromJson(Map<String, dynamic> json) => _$FixedAlignArgsFromJson(json);

@override@JsonKey() final  WidgetEntity? child;
@override final  AlignmentWrapper alignment;

/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedAlignArgsCopyWith<_FixedAlignArgs> get copyWith => __$FixedAlignArgsCopyWithImpl<_FixedAlignArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedAlignArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedAlignArgs&&(identical(other.child, child) || other.child == child)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,alignment);

@override
String toString() {
  return 'FixedAlignArgs(child: $child, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$FixedAlignArgsCopyWith<$Res> implements $FixedAlignArgsCopyWith<$Res> {
  factory _$FixedAlignArgsCopyWith(_FixedAlignArgs value, $Res Function(_FixedAlignArgs) _then) = __$FixedAlignArgsCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntity? child, AlignmentWrapper alignment
});


@override $WidgetEntityCopyWith<$Res>? get child;@override $AlignmentWrapperCopyWith<$Res> get alignment;

}
/// @nodoc
class __$FixedAlignArgsCopyWithImpl<$Res>
    implements _$FixedAlignArgsCopyWith<$Res> {
  __$FixedAlignArgsCopyWithImpl(this._self, this._then);

  final _FixedAlignArgs _self;
  final $Res Function(_FixedAlignArgs) _then;

/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child = freezed,Object? alignment = null,}) {
  return _then(_FixedAlignArgs(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as AlignmentWrapper,
  ));
}

/// Create a copy of FixedAlignArgs
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
}/// Create a copy of FixedAlignArgs
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlignmentWrapperCopyWith<$Res> get alignment {
  
  return $AlignmentWrapperCopyWith<$Res>(_self.alignment, (value) {
    return _then(_self.copyWith(alignment: value));
  });
}
}

// dart format on
