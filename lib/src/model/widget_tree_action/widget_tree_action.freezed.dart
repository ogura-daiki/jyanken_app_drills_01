// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_tree_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WidgetTreeAction _$WidgetTreeActionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'update':
          return WidgetTreeActionUpdate.fromJson(
            json
          );
                case 'remove':
          return WidgetTreeActionRemove.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WidgetTreeAction',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WidgetTreeAction {

 List<WidgetChildSelector> get selector;
/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetTreeActionCopyWith<WidgetTreeAction> get copyWith => _$WidgetTreeActionCopyWithImpl<WidgetTreeAction>(this as WidgetTreeAction, _$identity);

  /// Serializes this WidgetTreeAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetTreeAction&&const DeepCollectionEquality().equals(other.selector, selector));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selector));

@override
String toString() {
  return 'WidgetTreeAction(selector: $selector)';
}


}

/// @nodoc
abstract mixin class $WidgetTreeActionCopyWith<$Res>  {
  factory $WidgetTreeActionCopyWith(WidgetTreeAction value, $Res Function(WidgetTreeAction) _then) = _$WidgetTreeActionCopyWithImpl;
@useResult
$Res call({
 List<WidgetChildSelector> selector
});




}
/// @nodoc
class _$WidgetTreeActionCopyWithImpl<$Res>
    implements $WidgetTreeActionCopyWith<$Res> {
  _$WidgetTreeActionCopyWithImpl(this._self, this._then);

  final WidgetTreeAction _self;
  final $Res Function(WidgetTreeAction) _then;

/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selector = null,}) {
  return _then(_self.copyWith(
selector: null == selector ? _self.selector : selector // ignore: cast_nullable_to_non_nullable
as List<WidgetChildSelector>,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetTreeAction].
extension WidgetTreeActionPatterns on WidgetTreeAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetTreeActionUpdate value)?  update,TResult Function( WidgetTreeActionRemove value)?  remove,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetTreeActionUpdate() when update != null:
return update(_that);case WidgetTreeActionRemove() when remove != null:
return remove(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetTreeActionUpdate value)  update,required TResult Function( WidgetTreeActionRemove value)  remove,}){
final _that = this;
switch (_that) {
case WidgetTreeActionUpdate():
return update(_that);case WidgetTreeActionRemove():
return remove(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetTreeActionUpdate value)?  update,TResult? Function( WidgetTreeActionRemove value)?  remove,}){
final _that = this;
switch (_that) {
case WidgetTreeActionUpdate() when update != null:
return update(_that);case WidgetTreeActionRemove() when remove != null:
return remove(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<WidgetChildSelector> selector,  WidgetEntity? oldValue,  WidgetEntity newValue)?  update,TResult Function( List<WidgetChildSelector> selector)?  remove,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WidgetTreeActionUpdate() when update != null:
return update(_that.selector,_that.oldValue,_that.newValue);case WidgetTreeActionRemove() when remove != null:
return remove(_that.selector);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<WidgetChildSelector> selector,  WidgetEntity? oldValue,  WidgetEntity newValue)  update,required TResult Function( List<WidgetChildSelector> selector)  remove,}) {final _that = this;
switch (_that) {
case WidgetTreeActionUpdate():
return update(_that.selector,_that.oldValue,_that.newValue);case WidgetTreeActionRemove():
return remove(_that.selector);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<WidgetChildSelector> selector,  WidgetEntity? oldValue,  WidgetEntity newValue)?  update,TResult? Function( List<WidgetChildSelector> selector)?  remove,}) {final _that = this;
switch (_that) {
case WidgetTreeActionUpdate() when update != null:
return update(_that.selector,_that.oldValue,_that.newValue);case WidgetTreeActionRemove() when remove != null:
return remove(_that.selector);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetTreeActionUpdate extends WidgetTreeAction {
  const WidgetTreeActionUpdate({required final  List<WidgetChildSelector> selector, required this.oldValue, required this.newValue, final  String? $type}): _selector = selector,$type = $type ?? 'update',super._();
  factory WidgetTreeActionUpdate.fromJson(Map<String, dynamic> json) => _$WidgetTreeActionUpdateFromJson(json);

 final  List<WidgetChildSelector> _selector;
@override List<WidgetChildSelector> get selector {
  if (_selector is EqualUnmodifiableListView) return _selector;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selector);
}

 final  WidgetEntity? oldValue;
 final  WidgetEntity newValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetTreeActionUpdateCopyWith<WidgetTreeActionUpdate> get copyWith => _$WidgetTreeActionUpdateCopyWithImpl<WidgetTreeActionUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetTreeActionUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetTreeActionUpdate&&const DeepCollectionEquality().equals(other._selector, _selector)&&(identical(other.oldValue, oldValue) || other.oldValue == oldValue)&&(identical(other.newValue, newValue) || other.newValue == newValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selector),oldValue,newValue);

@override
String toString() {
  return 'WidgetTreeAction.update(selector: $selector, oldValue: $oldValue, newValue: $newValue)';
}


}

/// @nodoc
abstract mixin class $WidgetTreeActionUpdateCopyWith<$Res> implements $WidgetTreeActionCopyWith<$Res> {
  factory $WidgetTreeActionUpdateCopyWith(WidgetTreeActionUpdate value, $Res Function(WidgetTreeActionUpdate) _then) = _$WidgetTreeActionUpdateCopyWithImpl;
@override @useResult
$Res call({
 List<WidgetChildSelector> selector, WidgetEntity? oldValue, WidgetEntity newValue
});


$WidgetEntityCopyWith<$Res>? get oldValue;$WidgetEntityCopyWith<$Res> get newValue;

}
/// @nodoc
class _$WidgetTreeActionUpdateCopyWithImpl<$Res>
    implements $WidgetTreeActionUpdateCopyWith<$Res> {
  _$WidgetTreeActionUpdateCopyWithImpl(this._self, this._then);

  final WidgetTreeActionUpdate _self;
  final $Res Function(WidgetTreeActionUpdate) _then;

/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selector = null,Object? oldValue = freezed,Object? newValue = null,}) {
  return _then(WidgetTreeActionUpdate(
selector: null == selector ? _self._selector : selector // ignore: cast_nullable_to_non_nullable
as List<WidgetChildSelector>,oldValue: freezed == oldValue ? _self.oldValue : oldValue // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,newValue: null == newValue ? _self.newValue : newValue // ignore: cast_nullable_to_non_nullable
as WidgetEntity,
  ));
}

/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get oldValue {
    if (_self.oldValue == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.oldValue!, (value) {
    return _then(_self.copyWith(oldValue: value));
  });
}/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res> get newValue {
  
  return $WidgetEntityCopyWith<$Res>(_self.newValue, (value) {
    return _then(_self.copyWith(newValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetTreeActionRemove extends WidgetTreeAction {
  const WidgetTreeActionRemove({required final  List<WidgetChildSelector> selector, final  String? $type}): _selector = selector,$type = $type ?? 'remove',super._();
  factory WidgetTreeActionRemove.fromJson(Map<String, dynamic> json) => _$WidgetTreeActionRemoveFromJson(json);

 final  List<WidgetChildSelector> _selector;
@override List<WidgetChildSelector> get selector {
  if (_selector is EqualUnmodifiableListView) return _selector;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selector);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetTreeActionRemoveCopyWith<WidgetTreeActionRemove> get copyWith => _$WidgetTreeActionRemoveCopyWithImpl<WidgetTreeActionRemove>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetTreeActionRemoveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetTreeActionRemove&&const DeepCollectionEquality().equals(other._selector, _selector));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selector));

@override
String toString() {
  return 'WidgetTreeAction.remove(selector: $selector)';
}


}

/// @nodoc
abstract mixin class $WidgetTreeActionRemoveCopyWith<$Res> implements $WidgetTreeActionCopyWith<$Res> {
  factory $WidgetTreeActionRemoveCopyWith(WidgetTreeActionRemove value, $Res Function(WidgetTreeActionRemove) _then) = _$WidgetTreeActionRemoveCopyWithImpl;
@override @useResult
$Res call({
 List<WidgetChildSelector> selector
});




}
/// @nodoc
class _$WidgetTreeActionRemoveCopyWithImpl<$Res>
    implements $WidgetTreeActionRemoveCopyWith<$Res> {
  _$WidgetTreeActionRemoveCopyWithImpl(this._self, this._then);

  final WidgetTreeActionRemove _self;
  final $Res Function(WidgetTreeActionRemove) _then;

/// Create a copy of WidgetTreeAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selector = null,}) {
  return _then(WidgetTreeActionRemove(
selector: null == selector ? _self._selector : selector // ignore: cast_nullable_to_non_nullable
as List<WidgetChildSelector>,
  ));
}


}

// dart format on
