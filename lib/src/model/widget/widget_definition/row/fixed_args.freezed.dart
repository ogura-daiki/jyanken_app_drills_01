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
mixin _$FixedRowArgs {

 MainAxisAlignment get mainAxisAlignment; MainAxisSize get mainAxisSize; CrossAxisAlignment get crossAxisAlignment; double get spacing; List<WidgetEntity> get children;
/// Create a copy of FixedRowArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedRowArgsCopyWith<FixedRowArgs> get copyWith => _$FixedRowArgsCopyWithImpl<FixedRowArgs>(this as FixedRowArgs, _$identity);

  /// Serializes this FixedRowArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedRowArgs&&(identical(other.mainAxisAlignment, mainAxisAlignment) || other.mainAxisAlignment == mainAxisAlignment)&&(identical(other.mainAxisSize, mainAxisSize) || other.mainAxisSize == mainAxisSize)&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainAxisAlignment,mainAxisSize,crossAxisAlignment,spacing,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'FixedRowArgs(mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, spacing: $spacing, children: $children)';
}


}

/// @nodoc
abstract mixin class $FixedRowArgsCopyWith<$Res>  {
  factory $FixedRowArgsCopyWith(FixedRowArgs value, $Res Function(FixedRowArgs) _then) = _$FixedRowArgsCopyWithImpl;
@useResult
$Res call({
 MainAxisAlignment mainAxisAlignment, MainAxisSize mainAxisSize, CrossAxisAlignment crossAxisAlignment, double spacing, List<WidgetEntity> children
});




}
/// @nodoc
class _$FixedRowArgsCopyWithImpl<$Res>
    implements $FixedRowArgsCopyWith<$Res> {
  _$FixedRowArgsCopyWithImpl(this._self, this._then);

  final FixedRowArgs _self;
  final $Res Function(FixedRowArgs) _then;

/// Create a copy of FixedRowArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainAxisAlignment = null,Object? mainAxisSize = null,Object? crossAxisAlignment = null,Object? spacing = null,Object? children = null,}) {
  return _then(_self.copyWith(
mainAxisAlignment: null == mainAxisAlignment ? _self.mainAxisAlignment : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
as MainAxisAlignment,mainAxisSize: null == mainAxisSize ? _self.mainAxisSize : mainAxisSize // ignore: cast_nullable_to_non_nullable
as MainAxisSize,crossAxisAlignment: null == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,spacing: null == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [FixedRowArgs].
extension FixedRowArgsPatterns on FixedRowArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedRowArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedRowArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedRowArgs value)  $default,){
final _that = this;
switch (_that) {
case _FixedRowArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedRowArgs value)?  $default,){
final _that = this;
switch (_that) {
case _FixedRowArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MainAxisAlignment mainAxisAlignment,  MainAxisSize mainAxisSize,  CrossAxisAlignment crossAxisAlignment,  double spacing,  List<WidgetEntity> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedRowArgs() when $default != null:
return $default(_that.mainAxisAlignment,_that.mainAxisSize,_that.crossAxisAlignment,_that.spacing,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MainAxisAlignment mainAxisAlignment,  MainAxisSize mainAxisSize,  CrossAxisAlignment crossAxisAlignment,  double spacing,  List<WidgetEntity> children)  $default,) {final _that = this;
switch (_that) {
case _FixedRowArgs():
return $default(_that.mainAxisAlignment,_that.mainAxisSize,_that.crossAxisAlignment,_that.spacing,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MainAxisAlignment mainAxisAlignment,  MainAxisSize mainAxisSize,  CrossAxisAlignment crossAxisAlignment,  double spacing,  List<WidgetEntity> children)?  $default,) {final _that = this;
switch (_that) {
case _FixedRowArgs() when $default != null:
return $default(_that.mainAxisAlignment,_that.mainAxisSize,_that.crossAxisAlignment,_that.spacing,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedRowArgs extends FixedRowArgs {
  const _FixedRowArgs({this.mainAxisAlignment = MainAxisAlignment.start, this.mainAxisSize = MainAxisSize.min, this.crossAxisAlignment = CrossAxisAlignment.start, this.spacing = 0.0, final  List<WidgetEntity> children = const []}): _children = children,super._();
  factory _FixedRowArgs.fromJson(Map<String, dynamic> json) => _$FixedRowArgsFromJson(json);

@override@JsonKey() final  MainAxisAlignment mainAxisAlignment;
@override@JsonKey() final  MainAxisSize mainAxisSize;
@override@JsonKey() final  CrossAxisAlignment crossAxisAlignment;
@override@JsonKey() final  double spacing;
 final  List<WidgetEntity> _children;
@override@JsonKey() List<WidgetEntity> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of FixedRowArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedRowArgsCopyWith<_FixedRowArgs> get copyWith => __$FixedRowArgsCopyWithImpl<_FixedRowArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedRowArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedRowArgs&&(identical(other.mainAxisAlignment, mainAxisAlignment) || other.mainAxisAlignment == mainAxisAlignment)&&(identical(other.mainAxisSize, mainAxisSize) || other.mainAxisSize == mainAxisSize)&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainAxisAlignment,mainAxisSize,crossAxisAlignment,spacing,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'FixedRowArgs(mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, spacing: $spacing, children: $children)';
}


}

/// @nodoc
abstract mixin class _$FixedRowArgsCopyWith<$Res> implements $FixedRowArgsCopyWith<$Res> {
  factory _$FixedRowArgsCopyWith(_FixedRowArgs value, $Res Function(_FixedRowArgs) _then) = __$FixedRowArgsCopyWithImpl;
@override @useResult
$Res call({
 MainAxisAlignment mainAxisAlignment, MainAxisSize mainAxisSize, CrossAxisAlignment crossAxisAlignment, double spacing, List<WidgetEntity> children
});




}
/// @nodoc
class __$FixedRowArgsCopyWithImpl<$Res>
    implements _$FixedRowArgsCopyWith<$Res> {
  __$FixedRowArgsCopyWithImpl(this._self, this._then);

  final _FixedRowArgs _self;
  final $Res Function(_FixedRowArgs) _then;

/// Create a copy of FixedRowArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainAxisAlignment = null,Object? mainAxisSize = null,Object? crossAxisAlignment = null,Object? spacing = null,Object? children = null,}) {
  return _then(_FixedRowArgs(
mainAxisAlignment: null == mainAxisAlignment ? _self.mainAxisAlignment : mainAxisAlignment // ignore: cast_nullable_to_non_nullable
as MainAxisAlignment,mainAxisSize: null == mainAxisSize ? _self.mainAxisSize : mainAxisSize // ignore: cast_nullable_to_non_nullable
as MainAxisSize,crossAxisAlignment: null == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,spacing: null == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

// dart format on
