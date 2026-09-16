// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hands_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandsResult {

 Map<Hand, HandResult> get vsRock; Map<Hand, HandResult> get vsScissors; Map<Hand, HandResult> get vsPaper;
/// Create a copy of HandsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandsResultCopyWith<HandsResult> get copyWith => _$HandsResultCopyWithImpl<HandsResult>(this as HandsResult, _$identity);

  /// Serializes this HandsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandsResult&&const DeepCollectionEquality().equals(other.vsRock, vsRock)&&const DeepCollectionEquality().equals(other.vsScissors, vsScissors)&&const DeepCollectionEquality().equals(other.vsPaper, vsPaper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vsRock),const DeepCollectionEquality().hash(vsScissors),const DeepCollectionEquality().hash(vsPaper));

@override
String toString() {
  return 'HandsResult(vsRock: $vsRock, vsScissors: $vsScissors, vsPaper: $vsPaper)';
}


}

/// @nodoc
abstract mixin class $HandsResultCopyWith<$Res>  {
  factory $HandsResultCopyWith(HandsResult value, $Res Function(HandsResult) _then) = _$HandsResultCopyWithImpl;
@useResult
$Res call({
 Map<Hand, HandResult> vsRock, Map<Hand, HandResult> vsScissors, Map<Hand, HandResult> vsPaper
});




}
/// @nodoc
class _$HandsResultCopyWithImpl<$Res>
    implements $HandsResultCopyWith<$Res> {
  _$HandsResultCopyWithImpl(this._self, this._then);

  final HandsResult _self;
  final $Res Function(HandsResult) _then;

/// Create a copy of HandsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vsRock = null,Object? vsScissors = null,Object? vsPaper = null,}) {
  return _then(_self.copyWith(
vsRock: null == vsRock ? _self.vsRock : vsRock // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,vsScissors: null == vsScissors ? _self.vsScissors : vsScissors // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,vsPaper: null == vsPaper ? _self.vsPaper : vsPaper // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [HandsResult].
extension HandsResultPatterns on HandsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandsResult value)  $default,){
final _that = this;
switch (_that) {
case _HandsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandsResult value)?  $default,){
final _that = this;
switch (_that) {
case _HandsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<Hand, HandResult> vsRock,  Map<Hand, HandResult> vsScissors,  Map<Hand, HandResult> vsPaper)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandsResult() when $default != null:
return $default(_that.vsRock,_that.vsScissors,_that.vsPaper);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<Hand, HandResult> vsRock,  Map<Hand, HandResult> vsScissors,  Map<Hand, HandResult> vsPaper)  $default,) {final _that = this;
switch (_that) {
case _HandsResult():
return $default(_that.vsRock,_that.vsScissors,_that.vsPaper);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<Hand, HandResult> vsRock,  Map<Hand, HandResult> vsScissors,  Map<Hand, HandResult> vsPaper)?  $default,) {final _that = this;
switch (_that) {
case _HandsResult() when $default != null:
return $default(_that.vsRock,_that.vsScissors,_that.vsPaper);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandsResult extends HandsResult {
  const _HandsResult({final  Map<Hand, HandResult> vsRock = const <Hand, HandResult>{.rock : .lose, .scissors : .lose, .paper : .lose}, final  Map<Hand, HandResult> vsScissors = const <Hand, HandResult>{.rock : .lose, .scissors : .lose, .paper : .lose}, final  Map<Hand, HandResult> vsPaper = const <Hand, HandResult>{.rock : .lose, .scissors : .lose, .paper : .lose}}): _vsRock = vsRock,_vsScissors = vsScissors,_vsPaper = vsPaper,super._();
  factory _HandsResult.fromJson(Map<String, dynamic> json) => _$HandsResultFromJson(json);

 final  Map<Hand, HandResult> _vsRock;
@override@JsonKey() Map<Hand, HandResult> get vsRock {
  if (_vsRock is EqualUnmodifiableMapView) return _vsRock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vsRock);
}

 final  Map<Hand, HandResult> _vsScissors;
@override@JsonKey() Map<Hand, HandResult> get vsScissors {
  if (_vsScissors is EqualUnmodifiableMapView) return _vsScissors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vsScissors);
}

 final  Map<Hand, HandResult> _vsPaper;
@override@JsonKey() Map<Hand, HandResult> get vsPaper {
  if (_vsPaper is EqualUnmodifiableMapView) return _vsPaper;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vsPaper);
}


/// Create a copy of HandsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandsResultCopyWith<_HandsResult> get copyWith => __$HandsResultCopyWithImpl<_HandsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandsResult&&const DeepCollectionEquality().equals(other._vsRock, _vsRock)&&const DeepCollectionEquality().equals(other._vsScissors, _vsScissors)&&const DeepCollectionEquality().equals(other._vsPaper, _vsPaper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vsRock),const DeepCollectionEquality().hash(_vsScissors),const DeepCollectionEquality().hash(_vsPaper));

@override
String toString() {
  return 'HandsResult(vsRock: $vsRock, vsScissors: $vsScissors, vsPaper: $vsPaper)';
}


}

/// @nodoc
abstract mixin class _$HandsResultCopyWith<$Res> implements $HandsResultCopyWith<$Res> {
  factory _$HandsResultCopyWith(_HandsResult value, $Res Function(_HandsResult) _then) = __$HandsResultCopyWithImpl;
@override @useResult
$Res call({
 Map<Hand, HandResult> vsRock, Map<Hand, HandResult> vsScissors, Map<Hand, HandResult> vsPaper
});




}
/// @nodoc
class __$HandsResultCopyWithImpl<$Res>
    implements _$HandsResultCopyWith<$Res> {
  __$HandsResultCopyWithImpl(this._self, this._then);

  final _HandsResult _self;
  final $Res Function(_HandsResult) _then;

/// Create a copy of HandsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vsRock = null,Object? vsScissors = null,Object? vsPaper = null,}) {
  return _then(_HandsResult(
vsRock: null == vsRock ? _self._vsRock : vsRock // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,vsScissors: null == vsScissors ? _self._vsScissors : vsScissors // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,vsPaper: null == vsPaper ? _self._vsPaper : vsPaper // ignore: cast_nullable_to_non_nullable
as Map<Hand, HandResult>,
  ));
}


}

// dart format on
