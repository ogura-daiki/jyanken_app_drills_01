// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_args_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WidgetArgsWrapper {

 WidgetType get type; Map<WidgetArg, dynamic> get args;
/// Create a copy of WidgetArgsWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgsWrapperCopyWith<WidgetArgsWrapper> get copyWith => _$WidgetArgsWrapperCopyWithImpl<WidgetArgsWrapper>(this as WidgetArgsWrapper, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgsWrapper&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.args, args));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'WidgetArgsWrapper(type: $type, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetArgsWrapperCopyWith<$Res>  {
  factory $WidgetArgsWrapperCopyWith(WidgetArgsWrapper value, $Res Function(WidgetArgsWrapper) _then) = _$WidgetArgsWrapperCopyWithImpl;
@useResult
$Res call({
 WidgetType type, Map<WidgetArg, dynamic> args
});




}
/// @nodoc
class _$WidgetArgsWrapperCopyWithImpl<$Res>
    implements $WidgetArgsWrapperCopyWith<$Res> {
  _$WidgetArgsWrapperCopyWithImpl(this._self, this._then);

  final WidgetArgsWrapper _self;
  final $Res Function(WidgetArgsWrapper) _then;

/// Create a copy of WidgetArgsWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? args = null,}) {
  return _then(WidgetArgsWrapper(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as Map<WidgetArg, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetArgsWrapper].
extension WidgetArgsWrapperPatterns on WidgetArgsWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetArgsWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetArgsWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetArgsWrapper value)  $default,){
final _that = this;
switch (_that) {
case _WidgetArgsWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetArgsWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetArgsWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WidgetType type,  Map<WidgetArg, dynamic> args)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetArgsWrapper() when $default != null:
return $default(_that.type,_that.args);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WidgetType type,  Map<WidgetArg, dynamic> args)  $default,) {final _that = this;
switch (_that) {
case _WidgetArgsWrapper():
return $default(_that.type,_that.args);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WidgetType type,  Map<WidgetArg, dynamic> args)?  $default,) {final _that = this;
switch (_that) {
case _WidgetArgsWrapper() when $default != null:
return $default(_that.type,_that.args);case _:
  return null;

}
}

}

/// @nodoc


class _WidgetArgsWrapper extends WidgetArgsWrapper {
  const _WidgetArgsWrapper({required this.type, required  Map<WidgetArg, dynamic> args}): _args = args,super._();
  

@override final  WidgetType type;
 final  Map<WidgetArg, dynamic> _args;
@override Map<WidgetArg, dynamic> get args {
  if (_args is EqualUnmodifiableMapView) return _args;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_args);
}


/// Create a copy of WidgetArgsWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetArgsWrapperCopyWith<_WidgetArgsWrapper> get copyWith => __$WidgetArgsWrapperCopyWithImpl<_WidgetArgsWrapper>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetArgsWrapper&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._args, _args));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_args));

@override
String toString() {
  return 'WidgetArgsWrapper(type: $type, args: $args)';
}


}

/// @nodoc
abstract mixin class _$WidgetArgsWrapperCopyWith<$Res> implements $WidgetArgsWrapperCopyWith<$Res> {
  factory _$WidgetArgsWrapperCopyWith(_WidgetArgsWrapper value, $Res Function(_WidgetArgsWrapper) _then) = __$WidgetArgsWrapperCopyWithImpl;
@override @useResult
$Res call({
 WidgetType type, Map<WidgetArg, dynamic> args
});




}
/// @nodoc
class __$WidgetArgsWrapperCopyWithImpl<$Res>
    implements _$WidgetArgsWrapperCopyWith<$Res> {
  __$WidgetArgsWrapperCopyWithImpl(this._self, this._then);

  final _WidgetArgsWrapper _self;
  final $Res Function(_WidgetArgsWrapper) _then;

/// Create a copy of WidgetArgsWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? args = null,}) {
  return _then(_WidgetArgsWrapper(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,args: null == args ? _self._args : args // ignore: cast_nullable_to_non_nullable
as Map<WidgetArg, dynamic>,
  ));
}


}

// dart format on
