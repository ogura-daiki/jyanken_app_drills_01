// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typed_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TypedArg<T> _$TypedArgFromJson<T>(
  Map<String, dynamic> json,T Function(Object?) fromJsonT
) {
        switch (json['runtimeType']) {
                  case 'nonNull':
          return NonnullArg<T>.fromJson(
            json,fromJsonT
          );
                case 'nullable':
          return NullableArg<T>.fromJson(
            json,fromJsonT
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'TypedArg',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$TypedArg<T> {



  /// Serializes this TypedArg to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypedArg<T>);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypedArg<$T>()';
}


}

/// @nodoc
class $TypedArgCopyWith<T,$Res>  {
$TypedArgCopyWith(TypedArg<T> _, $Res Function(TypedArg<T>) __);
}


/// Adds pattern-matching-related methods to [TypedArg].
extension TypedArgPatterns<T> on TypedArg<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NonnullArg<T> value)?  nonNull,TResult Function( NullableArg<T> value)?  nullable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NonnullArg() when nonNull != null:
return nonNull(_that);case NullableArg() when nullable != null:
return nullable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NonnullArg<T> value)  nonNull,required TResult Function( NullableArg<T> value)  nullable,}){
final _that = this;
switch (_that) {
case NonnullArg():
return nonNull(_that);case NullableArg():
return nullable(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NonnullArg<T> value)?  nonNull,TResult? Function( NullableArg<T> value)?  nullable,}){
final _that = this;
switch (_that) {
case NonnullArg() when nonNull != null:
return nonNull(_that);case NullableArg() when nullable != null:
return nullable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@Assert("value is! TypedArg")  T nonnullDefault)?  nonNull,TResult Function(@Assert("value is! TypedArg")  T? nullableDefault)?  nullable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NonnullArg() when nonNull != null:
return nonNull(_that.nonnullDefault);case NullableArg() when nullable != null:
return nullable(_that.nullableDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@Assert("value is! TypedArg")  T nonnullDefault)  nonNull,required TResult Function(@Assert("value is! TypedArg")  T? nullableDefault)  nullable,}) {final _that = this;
switch (_that) {
case NonnullArg():
return nonNull(_that.nonnullDefault);case NullableArg():
return nullable(_that.nullableDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@Assert("value is! TypedArg")  T nonnullDefault)?  nonNull,TResult? Function(@Assert("value is! TypedArg")  T? nullableDefault)?  nullable,}) {final _that = this;
switch (_that) {
case NonnullArg() when nonNull != null:
return nonNull(_that.nonnullDefault);case NullableArg() when nullable != null:
return nullable(_that.nullableDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class NonnullArg<T> extends TypedArg<T> {
  const NonnullArg(@Assert("value is! TypedArg") this.nonnullDefault, {final  String? $type}): $type = $type ?? 'nonNull',super._();
  factory NonnullArg.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$NonnullArgFromJson(json,fromJsonT);

@Assert("value is! TypedArg") final  T nonnullDefault;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of TypedArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NonnullArgCopyWith<T, NonnullArg<T>> get copyWith => _$NonnullArgCopyWithImpl<T, NonnullArg<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$NonnullArgToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NonnullArg<T>&&const DeepCollectionEquality().equals(other.nonnullDefault, nonnullDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nonnullDefault));

@override
String toString() {
  return 'TypedArg<$T>.nonNull(nonnullDefault: $nonnullDefault)';
}


}

/// @nodoc
abstract mixin class $NonnullArgCopyWith<T,$Res> implements $TypedArgCopyWith<T, $Res> {
  factory $NonnullArgCopyWith(NonnullArg<T> value, $Res Function(NonnullArg<T>) _then) = _$NonnullArgCopyWithImpl;
@useResult
$Res call({
@Assert("value is! TypedArg") T nonnullDefault
});




}
/// @nodoc
class _$NonnullArgCopyWithImpl<T,$Res>
    implements $NonnullArgCopyWith<T, $Res> {
  _$NonnullArgCopyWithImpl(this._self, this._then);

  final NonnullArg<T> _self;
  final $Res Function(NonnullArg<T>) _then;

/// Create a copy of TypedArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nonnullDefault = freezed,}) {
  return _then(NonnullArg<T>(
freezed == nonnullDefault ? _self.nonnullDefault : nonnullDefault // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class NullableArg<T> extends TypedArg<T> {
  const NullableArg([@Assert("value is! TypedArg") this.nullableDefault = null, final  String? $type]): $type = $type ?? 'nullable',super._();
  factory NullableArg.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$NullableArgFromJson(json,fromJsonT);

@JsonKey()@Assert("value is! TypedArg") final  T? nullableDefault;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of TypedArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NullableArgCopyWith<T, NullableArg<T>> get copyWith => _$NullableArgCopyWithImpl<T, NullableArg<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$NullableArgToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NullableArg<T>&&const DeepCollectionEquality().equals(other.nullableDefault, nullableDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nullableDefault));

@override
String toString() {
  return 'TypedArg<$T>.nullable(nullableDefault: $nullableDefault)';
}


}

/// @nodoc
abstract mixin class $NullableArgCopyWith<T,$Res> implements $TypedArgCopyWith<T, $Res> {
  factory $NullableArgCopyWith(NullableArg<T> value, $Res Function(NullableArg<T>) _then) = _$NullableArgCopyWithImpl;
@useResult
$Res call({
@Assert("value is! TypedArg") T? nullableDefault
});




}
/// @nodoc
class _$NullableArgCopyWithImpl<T,$Res>
    implements $NullableArgCopyWith<T, $Res> {
  _$NullableArgCopyWithImpl(this._self, this._then);

  final NullableArg<T> _self;
  final $Res Function(NullableArg<T>) _then;

/// Create a copy of TypedArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nullableDefault = freezed,}) {
  return _then(NullableArg<T>(
freezed == nullableDefault ? _self.nullableDefault : nullableDefault // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
