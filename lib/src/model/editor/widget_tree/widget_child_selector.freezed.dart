// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_child_selector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetChildSelector {

 CanHaveChildArg get arg; WidgetEntityId get entityId;
/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetChildSelectorCopyWith<WidgetChildSelector> get copyWith => _$WidgetChildSelectorCopyWithImpl<WidgetChildSelector>(this as WidgetChildSelector, _$identity);

  /// Serializes this WidgetChildSelector to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetChildSelector&&(identical(other.arg, arg) || other.arg == arg)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg,entityId);

@override
String toString() {
  return 'WidgetChildSelector(arg: $arg, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class $WidgetChildSelectorCopyWith<$Res>  {
  factory $WidgetChildSelectorCopyWith(WidgetChildSelector value, $Res Function(WidgetChildSelector) _then) = _$WidgetChildSelectorCopyWithImpl;
@useResult
$Res call({
 CanHaveChildArg arg, WidgetEntityId entityId
});


$WidgetEntityIdCopyWith<$Res> get entityId;

}
/// @nodoc
class _$WidgetChildSelectorCopyWithImpl<$Res>
    implements $WidgetChildSelectorCopyWith<$Res> {
  _$WidgetChildSelectorCopyWithImpl(this._self, this._then);

  final WidgetChildSelector _self;
  final $Res Function(WidgetChildSelector) _then;

/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? arg = null,Object? entityId = null,}) {
  return _then(_self.copyWith(
arg: null == arg ? _self.arg : arg // ignore: cast_nullable_to_non_nullable
as CanHaveChildArg,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,
  ));
}
/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get entityId {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}
}


/// Adds pattern-matching-related methods to [WidgetChildSelector].
extension WidgetChildSelectorPatterns on WidgetChildSelector {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetChildSelector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetChildSelector() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetChildSelector value)  $default,){
final _that = this;
switch (_that) {
case _WidgetChildSelector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetChildSelector value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetChildSelector() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CanHaveChildArg arg,  WidgetEntityId entityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetChildSelector() when $default != null:
return $default(_that.arg,_that.entityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CanHaveChildArg arg,  WidgetEntityId entityId)  $default,) {final _that = this;
switch (_that) {
case _WidgetChildSelector():
return $default(_that.arg,_that.entityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CanHaveChildArg arg,  WidgetEntityId entityId)?  $default,) {final _that = this;
switch (_that) {
case _WidgetChildSelector() when $default != null:
return $default(_that.arg,_that.entityId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WidgetChildSelector extends WidgetChildSelector {
  const _WidgetChildSelector({required this.arg, required this.entityId}): super._();
  factory _WidgetChildSelector.fromJson(Map<String, dynamic> json) => _$WidgetChildSelectorFromJson(json);

@override final  CanHaveChildArg arg;
@override final  WidgetEntityId entityId;

/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetChildSelectorCopyWith<_WidgetChildSelector> get copyWith => __$WidgetChildSelectorCopyWithImpl<_WidgetChildSelector>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetChildSelectorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetChildSelector&&(identical(other.arg, arg) || other.arg == arg)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg,entityId);

@override
String toString() {
  return 'WidgetChildSelector(arg: $arg, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class _$WidgetChildSelectorCopyWith<$Res> implements $WidgetChildSelectorCopyWith<$Res> {
  factory _$WidgetChildSelectorCopyWith(_WidgetChildSelector value, $Res Function(_WidgetChildSelector) _then) = __$WidgetChildSelectorCopyWithImpl;
@override @useResult
$Res call({
 CanHaveChildArg arg, WidgetEntityId entityId
});


@override $WidgetEntityIdCopyWith<$Res> get entityId;

}
/// @nodoc
class __$WidgetChildSelectorCopyWithImpl<$Res>
    implements _$WidgetChildSelectorCopyWith<$Res> {
  __$WidgetChildSelectorCopyWithImpl(this._self, this._then);

  final _WidgetChildSelector _self;
  final $Res Function(_WidgetChildSelector) _then;

/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? arg = null,Object? entityId = null,}) {
  return _then(_WidgetChildSelector(
arg: null == arg ? _self.arg : arg // ignore: cast_nullable_to_non_nullable
as CanHaveChildArg,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,
  ));
}

/// Create a copy of WidgetChildSelector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get entityId {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}
}

// dart format on
