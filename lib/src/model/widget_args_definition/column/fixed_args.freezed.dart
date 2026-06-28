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
mixin _$FixedColumnArgs {

 CrossAxisAlignment get crossAxisAlignment; List<WidgetEntity> get children;
/// Create a copy of FixedColumnArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedColumnArgsCopyWith<FixedColumnArgs> get copyWith => _$FixedColumnArgsCopyWithImpl<FixedColumnArgs>(this as FixedColumnArgs, _$identity);

  /// Serializes this FixedColumnArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedColumnArgs&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,crossAxisAlignment,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'FixedColumnArgs(crossAxisAlignment: $crossAxisAlignment, children: $children)';
}


}

/// @nodoc
abstract mixin class $FixedColumnArgsCopyWith<$Res>  {
  factory $FixedColumnArgsCopyWith(FixedColumnArgs value, $Res Function(FixedColumnArgs) _then) = _$FixedColumnArgsCopyWithImpl;
@useResult
$Res call({
 CrossAxisAlignment crossAxisAlignment, List<WidgetEntity> children
});




}
/// @nodoc
class _$FixedColumnArgsCopyWithImpl<$Res>
    implements $FixedColumnArgsCopyWith<$Res> {
  _$FixedColumnArgsCopyWithImpl(this._self, this._then);

  final FixedColumnArgs _self;
  final $Res Function(FixedColumnArgs) _then;

/// Create a copy of FixedColumnArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? crossAxisAlignment = null,Object? children = null,}) {
  return _then(_self.copyWith(
crossAxisAlignment: null == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [FixedColumnArgs].
extension FixedColumnArgsPatterns on FixedColumnArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedColumnArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedColumnArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedColumnArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedColumnArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedColumnArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedColumnArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CrossAxisAlignment crossAxisAlignment,  List<WidgetEntity> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedColumnArgs() when $default != null:
return $default(_that.crossAxisAlignment,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CrossAxisAlignment crossAxisAlignment,  List<WidgetEntity> children)  $default,) {final _that = this;
switch (_that) {
case _FixedColumnArgs():
return $default(_that.crossAxisAlignment,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CrossAxisAlignment crossAxisAlignment,  List<WidgetEntity> children)?  $default,) {final _that = this;
switch (_that) {
case _FixedColumnArgs() when $default != null:
return $default(_that.crossAxisAlignment,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedColumnArgs extends FixedColumnArgs {
  const _FixedColumnArgs({this.crossAxisAlignment = CrossAxisAlignment.start, final  List<WidgetEntity> children = const []}): _children = children,super._();
  factory _FixedColumnArgs.fromJson(Map<String, dynamic> json) => _$FixedColumnArgsFromJson(json);

@override@JsonKey() final  CrossAxisAlignment crossAxisAlignment;
 final  List<WidgetEntity> _children;
@override@JsonKey() List<WidgetEntity> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of FixedColumnArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedColumnArgsCopyWith<_FixedColumnArgs> get copyWith => __$FixedColumnArgsCopyWithImpl<_FixedColumnArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedColumnArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedColumnArgs&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,crossAxisAlignment,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'FixedColumnArgs(crossAxisAlignment: $crossAxisAlignment, children: $children)';
}


}

/// @nodoc
abstract mixin class _$FixedColumnArgsCopyWith<$Res> implements $FixedColumnArgsCopyWith<$Res> {
  factory _$FixedColumnArgsCopyWith(_FixedColumnArgs value, $Res Function(_FixedColumnArgs) _then) = __$FixedColumnArgsCopyWithImpl;
@override @useResult
$Res call({
 CrossAxisAlignment crossAxisAlignment, List<WidgetEntity> children
});




}
/// @nodoc
class __$FixedColumnArgsCopyWithImpl<$Res>
    implements _$FixedColumnArgsCopyWith<$Res> {
  __$FixedColumnArgsCopyWithImpl(this._self, this._then);

  final _FixedColumnArgs _self;
  final $Res Function(_FixedColumnArgs) _then;

/// Create a copy of FixedColumnArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? crossAxisAlignment = null,Object? children = null,}) {
  return _then(_FixedColumnArgs(
crossAxisAlignment: null == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

// dart format on
