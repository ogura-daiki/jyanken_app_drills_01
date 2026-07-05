// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_entity_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WidgetEntityWrapper {

 WidgetEntityId get id; WidgetType get type; Map<WidgetArg, dynamic> get args;
/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityWrapperCopyWith<WidgetEntityWrapper> get copyWith => _$WidgetEntityWrapperCopyWithImpl<WidgetEntityWrapper>(this as WidgetEntityWrapper, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityWrapper&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.args, args));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'WidgetEntityWrapper(id: $id, type: $type, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityWrapperCopyWith<$Res>  {
  factory $WidgetEntityWrapperCopyWith(WidgetEntityWrapper value, $Res Function(WidgetEntityWrapper) _then) = _$WidgetEntityWrapperCopyWithImpl;
@useResult
$Res call({
 WidgetEntityId id, WidgetType type, Map<WidgetArg, dynamic> args
});


$WidgetEntityIdCopyWith<$Res> get id;

}
/// @nodoc
class _$WidgetEntityWrapperCopyWithImpl<$Res>
    implements $WidgetEntityWrapperCopyWith<$Res> {
  _$WidgetEntityWrapperCopyWithImpl(this._self, this._then);

  final WidgetEntityWrapper _self;
  final $Res Function(WidgetEntityWrapper) _then;

/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? args = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as Map<WidgetArg, dynamic>,
  ));
}
/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// Adds pattern-matching-related methods to [WidgetEntityWrapper].
extension WidgetEntityWrapperPatterns on WidgetEntityWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetEntityWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetEntityWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetEntityWrapper value)  $default,){
final _that = this;
switch (_that) {
case _WidgetEntityWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetEntityWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetEntityWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetEntityId id,  WidgetType type,  Map<WidgetArg, dynamic> args)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetEntityWrapper() when $default != null:
return $default(_that.id,_that.type,_that.args);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetEntityId id,  WidgetType type,  Map<WidgetArg, dynamic> args)  $default,) {final _that = this;
switch (_that) {
case _WidgetEntityWrapper():
return $default(_that.id,_that.type,_that.args);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetEntityId id,  WidgetType type,  Map<WidgetArg, dynamic> args)?  $default,) {final _that = this;
switch (_that) {
case _WidgetEntityWrapper() when $default != null:
return $default(_that.id,_that.type,_that.args);case _:
  return null;

}
}

}

/// @nodoc


class _WidgetEntityWrapper extends WidgetEntityWrapper {
  const _WidgetEntityWrapper({required this.id, required this.type, required final  Map<WidgetArg, dynamic> args}): _args = args,super._();
  

@override final  WidgetEntityId id;
@override final  WidgetType type;
 final  Map<WidgetArg, dynamic> _args;
@override Map<WidgetArg, dynamic> get args {
  if (_args is EqualUnmodifiableMapView) return _args;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_args);
}


/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetEntityWrapperCopyWith<_WidgetEntityWrapper> get copyWith => __$WidgetEntityWrapperCopyWithImpl<_WidgetEntityWrapper>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetEntityWrapper&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._args, _args));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,const DeepCollectionEquality().hash(_args));

@override
String toString() {
  return 'WidgetEntityWrapper(id: $id, type: $type, args: $args)';
}


}

/// @nodoc
abstract mixin class _$WidgetEntityWrapperCopyWith<$Res> implements $WidgetEntityWrapperCopyWith<$Res> {
  factory _$WidgetEntityWrapperCopyWith(_WidgetEntityWrapper value, $Res Function(_WidgetEntityWrapper) _then) = __$WidgetEntityWrapperCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, WidgetType type, Map<WidgetArg, dynamic> args
});


@override $WidgetEntityIdCopyWith<$Res> get id;

}
/// @nodoc
class __$WidgetEntityWrapperCopyWithImpl<$Res>
    implements _$WidgetEntityWrapperCopyWith<$Res> {
  __$WidgetEntityWrapperCopyWithImpl(this._self, this._then);

  final _WidgetEntityWrapper _self;
  final $Res Function(_WidgetEntityWrapper) _then;

/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? args = null,}) {
  return _then(_WidgetEntityWrapper(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,args: null == args ? _self._args : args // ignore: cast_nullable_to_non_nullable
as Map<WidgetArg, dynamic>,
  ));
}

/// Create a copy of WidgetEntityWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}

// dart format on
