// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resizable_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResizableArea {

 String get areaName; ResizableAreaType get type; Widget get widget;
/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaCopyWith<ResizableArea> get copyWith => _$ResizableAreaCopyWithImpl<ResizableArea>(this as ResizableArea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableArea&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.type, type) || other.type == type)&&(identical(other.widget, widget) || other.widget == widget));
}


@override
int get hashCode => Object.hash(runtimeType,areaName,type,widget);

@override
String toString() {
  return 'ResizableArea(areaName: $areaName, type: $type, widget: $widget)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaCopyWith<$Res>  {
  factory $ResizableAreaCopyWith(ResizableArea value, $Res Function(ResizableArea) _then) = _$ResizableAreaCopyWithImpl;
@useResult
$Res call({
 String areaName, ResizableAreaType type, Widget widget
});


$ResizableAreaTypeCopyWith<$Res> get type;

}
/// @nodoc
class _$ResizableAreaCopyWithImpl<$Res>
    implements $ResizableAreaCopyWith<$Res> {
  _$ResizableAreaCopyWithImpl(this._self, this._then);

  final ResizableArea _self;
  final $Res Function(ResizableArea) _then;

/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? areaName = null,Object? type = null,Object? widget = null,}) {
  return _then(_self.copyWith(
areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ResizableAreaType,widget: null == widget ? _self.widget : widget // ignore: cast_nullable_to_non_nullable
as Widget,
  ));
}
/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResizableAreaTypeCopyWith<$Res> get type {
  
  return $ResizableAreaTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResizableArea].
extension ResizableAreaPatterns on ResizableArea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResizableArea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResizableArea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResizableArea value)  $default,){
final _that = this;
switch (_that) {
case _ResizableArea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResizableArea value)?  $default,){
final _that = this;
switch (_that) {
case _ResizableArea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String areaName,  ResizableAreaType type,  Widget widget)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResizableArea() when $default != null:
return $default(_that.areaName,_that.type,_that.widget);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String areaName,  ResizableAreaType type,  Widget widget)  $default,) {final _that = this;
switch (_that) {
case _ResizableArea():
return $default(_that.areaName,_that.type,_that.widget);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String areaName,  ResizableAreaType type,  Widget widget)?  $default,) {final _that = this;
switch (_that) {
case _ResizableArea() when $default != null:
return $default(_that.areaName,_that.type,_that.widget);case _:
  return null;

}
}

}

/// @nodoc


class _ResizableArea extends ResizableArea {
  const _ResizableArea({required this.areaName, required this.type, required this.widget}): super._();
  

@override final  String areaName;
@override final  ResizableAreaType type;
@override final  Widget widget;

/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResizableAreaCopyWith<_ResizableArea> get copyWith => __$ResizableAreaCopyWithImpl<_ResizableArea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResizableArea&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.type, type) || other.type == type)&&(identical(other.widget, widget) || other.widget == widget));
}


@override
int get hashCode => Object.hash(runtimeType,areaName,type,widget);

@override
String toString() {
  return 'ResizableArea(areaName: $areaName, type: $type, widget: $widget)';
}


}

/// @nodoc
abstract mixin class _$ResizableAreaCopyWith<$Res> implements $ResizableAreaCopyWith<$Res> {
  factory _$ResizableAreaCopyWith(_ResizableArea value, $Res Function(_ResizableArea) _then) = __$ResizableAreaCopyWithImpl;
@override @useResult
$Res call({
 String areaName, ResizableAreaType type, Widget widget
});


@override $ResizableAreaTypeCopyWith<$Res> get type;

}
/// @nodoc
class __$ResizableAreaCopyWithImpl<$Res>
    implements _$ResizableAreaCopyWith<$Res> {
  __$ResizableAreaCopyWithImpl(this._self, this._then);

  final _ResizableArea _self;
  final $Res Function(_ResizableArea) _then;

/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaName = null,Object? type = null,Object? widget = null,}) {
  return _then(_ResizableArea(
areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ResizableAreaType,widget: null == widget ? _self.widget : widget // ignore: cast_nullable_to_non_nullable
as Widget,
  ));
}

/// Create a copy of ResizableArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResizableAreaTypeCopyWith<$Res> get type {
  
  return $ResizableAreaTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

// dart format on
