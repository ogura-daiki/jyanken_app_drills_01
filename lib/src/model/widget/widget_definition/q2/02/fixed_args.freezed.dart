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
mixin _$FixedQ2_2Args {

 List<String> get hands;
/// Create a copy of FixedQ2_2Args
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedQ2_2ArgsCopyWith<FixedQ2_2Args> get copyWith => _$FixedQ2_2ArgsCopyWithImpl<FixedQ2_2Args>(this as FixedQ2_2Args, _$identity);

  /// Serializes this FixedQ2_2Args to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedQ2_2Args&&const DeepCollectionEquality().equals(other.hands, hands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hands));

@override
String toString() {
  return 'FixedQ2_2Args(hands: $hands)';
}


}

/// @nodoc
abstract mixin class $FixedQ2_2ArgsCopyWith<$Res>  {
  factory $FixedQ2_2ArgsCopyWith(FixedQ2_2Args value, $Res Function(FixedQ2_2Args) _then) = _$FixedQ2_2ArgsCopyWithImpl;
@useResult
$Res call({
 List<String> hands
});




}
/// @nodoc
class _$FixedQ2_2ArgsCopyWithImpl<$Res>
    implements $FixedQ2_2ArgsCopyWith<$Res> {
  _$FixedQ2_2ArgsCopyWithImpl(this._self, this._then);

  final FixedQ2_2Args _self;
  final $Res Function(FixedQ2_2Args) _then;

/// Create a copy of FixedQ2_2Args
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hands = null,}) {
  return _then(_self.copyWith(
hands: null == hands ? _self.hands : hands // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FixedQ2_2Args].
extension FixedQ2_2ArgsPatterns on FixedQ2_2Args {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FixedQ2_2Args value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FixedQ2_2Args() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FixedQ2_2Args value)  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_2Args():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FixedQ2_2Args value)?  $default,){
final _that = this;
switch (_that) {
case _FixedQ2_2Args() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> hands)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FixedQ2_2Args() when $default != null:
return $default(_that.hands);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> hands)  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_2Args():
return $default(_that.hands);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> hands)?  $default,) {final _that = this;
switch (_that) {
case _FixedQ2_2Args() when $default != null:
return $default(_that.hands);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FixedQ2_2Args extends FixedQ2_2Args {
  const _FixedQ2_2Args({final  List<String> hands = const []}): _hands = hands,super._();
  factory _FixedQ2_2Args.fromJson(Map<String, dynamic> json) => _$FixedQ2_2ArgsFromJson(json);

 final  List<String> _hands;
@override@JsonKey() List<String> get hands {
  if (_hands is EqualUnmodifiableListView) return _hands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hands);
}


/// Create a copy of FixedQ2_2Args
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FixedQ2_2ArgsCopyWith<_FixedQ2_2Args> get copyWith => __$FixedQ2_2ArgsCopyWithImpl<_FixedQ2_2Args>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedQ2_2ArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FixedQ2_2Args&&const DeepCollectionEquality().equals(other._hands, _hands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hands));

@override
String toString() {
  return 'FixedQ2_2Args(hands: $hands)';
}


}

/// @nodoc
abstract mixin class _$FixedQ2_2ArgsCopyWith<$Res> implements $FixedQ2_2ArgsCopyWith<$Res> {
  factory _$FixedQ2_2ArgsCopyWith(_FixedQ2_2Args value, $Res Function(_FixedQ2_2Args) _then) = __$FixedQ2_2ArgsCopyWithImpl;
@override @useResult
$Res call({
 List<String> hands
});




}
/// @nodoc
class __$FixedQ2_2ArgsCopyWithImpl<$Res>
    implements _$FixedQ2_2ArgsCopyWith<$Res> {
  __$FixedQ2_2ArgsCopyWithImpl(this._self, this._then);

  final _FixedQ2_2Args _self;
  final $Res Function(_FixedQ2_2Args) _then;

/// Create a copy of FixedQ2_2Args
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hands = null,}) {
  return _then(_FixedQ2_2Args(
hands: null == hands ? _self._hands : hands // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
