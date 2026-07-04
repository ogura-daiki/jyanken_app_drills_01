// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_node_selector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TreeNodeSelector {

@Assert('arg.canHaveWidget') WidgetArg get arg; int get entityId;
/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeNodeSelectorCopyWith<TreeNodeSelector> get copyWith => _$TreeNodeSelectorCopyWithImpl<TreeNodeSelector>(this as TreeNodeSelector, _$identity);

  /// Serializes this TreeNodeSelector to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeNodeSelector&&(identical(other.arg, arg) || other.arg == arg)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg,entityId);

@override
String toString() {
  return 'TreeNodeSelector(arg: $arg, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class $TreeNodeSelectorCopyWith<$Res>  {
  factory $TreeNodeSelectorCopyWith(TreeNodeSelector value, $Res Function(TreeNodeSelector) _then) = _$TreeNodeSelectorCopyWithImpl;
@useResult
$Res call({
@Assert('arg.canHaveWidget') WidgetArg arg, int entityId
});


$WidgetArgCopyWith<$Res> get arg;

}
/// @nodoc
class _$TreeNodeSelectorCopyWithImpl<$Res>
    implements $TreeNodeSelectorCopyWith<$Res> {
  _$TreeNodeSelectorCopyWithImpl(this._self, this._then);

  final TreeNodeSelector _self;
  final $Res Function(TreeNodeSelector) _then;

/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? arg = null,Object? entityId = null,}) {
  return _then(_self.copyWith(
arg: null == arg ? _self.arg : arg // ignore: cast_nullable_to_non_nullable
as WidgetArg,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetArgCopyWith<$Res> get arg {
  
  return $WidgetArgCopyWith<$Res>(_self.arg, (value) {
    return _then(_self.copyWith(arg: value));
  });
}
}


/// Adds pattern-matching-related methods to [TreeNodeSelector].
extension TreeNodeSelectorPatterns on TreeNodeSelector {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeNodeSelector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeNodeSelector() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeNodeSelector value)  $default,){
final _that = this;
switch (_that) {
case _TreeNodeSelector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeNodeSelector value)?  $default,){
final _that = this;
switch (_that) {
case _TreeNodeSelector() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@Assert('arg.canHaveWidget')  WidgetArg arg,  int entityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeNodeSelector() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@Assert('arg.canHaveWidget')  WidgetArg arg,  int entityId)  $default,) {final _that = this;
switch (_that) {
case _TreeNodeSelector():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@Assert('arg.canHaveWidget')  WidgetArg arg,  int entityId)?  $default,) {final _that = this;
switch (_that) {
case _TreeNodeSelector() when $default != null:
return $default(_that.arg,_that.entityId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreeNodeSelector extends TreeNodeSelector {
  const _TreeNodeSelector({@Assert('arg.canHaveWidget') required this.arg, required this.entityId}): super._();
  factory _TreeNodeSelector.fromJson(Map<String, dynamic> json) => _$TreeNodeSelectorFromJson(json);

@override@Assert('arg.canHaveWidget') final  WidgetArg arg;
@override final  int entityId;

/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeNodeSelectorCopyWith<_TreeNodeSelector> get copyWith => __$TreeNodeSelectorCopyWithImpl<_TreeNodeSelector>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreeNodeSelectorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeNodeSelector&&(identical(other.arg, arg) || other.arg == arg)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg,entityId);

@override
String toString() {
  return 'TreeNodeSelector(arg: $arg, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class _$TreeNodeSelectorCopyWith<$Res> implements $TreeNodeSelectorCopyWith<$Res> {
  factory _$TreeNodeSelectorCopyWith(_TreeNodeSelector value, $Res Function(_TreeNodeSelector) _then) = __$TreeNodeSelectorCopyWithImpl;
@override @useResult
$Res call({
@Assert('arg.canHaveWidget') WidgetArg arg, int entityId
});


@override $WidgetArgCopyWith<$Res> get arg;

}
/// @nodoc
class __$TreeNodeSelectorCopyWithImpl<$Res>
    implements _$TreeNodeSelectorCopyWith<$Res> {
  __$TreeNodeSelectorCopyWithImpl(this._self, this._then);

  final _TreeNodeSelector _self;
  final $Res Function(_TreeNodeSelector) _then;

/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? arg = null,Object? entityId = null,}) {
  return _then(_TreeNodeSelector(
arg: null == arg ? _self.arg : arg // ignore: cast_nullable_to_non_nullable
as WidgetArg,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of TreeNodeSelector
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetArgCopyWith<$Res> get arg {
  
  return $WidgetArgCopyWith<$Res>(_self.arg, (value) {
    return _then(_self.copyWith(arg: value));
  });
}
}

// dart format on
