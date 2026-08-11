// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resizable_area_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ResizableAreaType _$ResizableAreaTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'fixed':
          return ResizableAreaTypeFixed.fromJson(
            json
          );
                case 'ratio':
          return ResizableAreaTypeRatio.fromJson(
            json
          );
                case 'expand':
          return ResizableAreaTypeWeight.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ResizableAreaType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ResizableAreaType {



  /// Serializes this ResizableAreaType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResizableAreaType()';
}


}

/// @nodoc
class $ResizableAreaTypeCopyWith<$Res>  {
$ResizableAreaTypeCopyWith(ResizableAreaType _, $Res Function(ResizableAreaType) __);
}


/// Adds pattern-matching-related methods to [ResizableAreaType].
extension ResizableAreaTypePatterns on ResizableAreaType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResizableAreaTypeFixed value)?  fixed,TResult Function( ResizableAreaTypeRatio value)?  ratio,TResult Function( ResizableAreaTypeWeight value)?  expand,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResizableAreaTypeFixed() when fixed != null:
return fixed(_that);case ResizableAreaTypeRatio() when ratio != null:
return ratio(_that);case ResizableAreaTypeWeight() when expand != null:
return expand(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResizableAreaTypeFixed value)  fixed,required TResult Function( ResizableAreaTypeRatio value)  ratio,required TResult Function( ResizableAreaTypeWeight value)  expand,}){
final _that = this;
switch (_that) {
case ResizableAreaTypeFixed():
return fixed(_that);case ResizableAreaTypeRatio():
return ratio(_that);case ResizableAreaTypeWeight():
return expand(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResizableAreaTypeFixed value)?  fixed,TResult? Function( ResizableAreaTypeRatio value)?  ratio,TResult? Function( ResizableAreaTypeWeight value)?  expand,}){
final _that = this;
switch (_that) {
case ResizableAreaTypeFixed() when fixed != null:
return fixed(_that);case ResizableAreaTypeRatio() when ratio != null:
return ratio(_that);case ResizableAreaTypeWeight() when expand != null:
return expand(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double initial)?  fixed,TResult Function( double ratio)?  ratio,TResult Function( double weight)?  expand,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResizableAreaTypeFixed() when fixed != null:
return fixed(_that.initial);case ResizableAreaTypeRatio() when ratio != null:
return ratio(_that.ratio);case ResizableAreaTypeWeight() when expand != null:
return expand(_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double initial)  fixed,required TResult Function( double ratio)  ratio,required TResult Function( double weight)  expand,}) {final _that = this;
switch (_that) {
case ResizableAreaTypeFixed():
return fixed(_that.initial);case ResizableAreaTypeRatio():
return ratio(_that.ratio);case ResizableAreaTypeWeight():
return expand(_that.weight);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double initial)?  fixed,TResult? Function( double ratio)?  ratio,TResult? Function( double weight)?  expand,}) {final _that = this;
switch (_that) {
case ResizableAreaTypeFixed() when fixed != null:
return fixed(_that.initial);case ResizableAreaTypeRatio() when ratio != null:
return ratio(_that.ratio);case ResizableAreaTypeWeight() when expand != null:
return expand(_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ResizableAreaTypeFixed extends ResizableAreaType {
  const ResizableAreaTypeFixed(this.initial, {final  String? $type}): $type = $type ?? 'fixed',super._();
  factory ResizableAreaTypeFixed.fromJson(Map<String, dynamic> json) => _$ResizableAreaTypeFixedFromJson(json);

 final  double initial;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaTypeFixedCopyWith<ResizableAreaTypeFixed> get copyWith => _$ResizableAreaTypeFixedCopyWithImpl<ResizableAreaTypeFixed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResizableAreaTypeFixedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaTypeFixed&&(identical(other.initial, initial) || other.initial == initial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,initial);

@override
String toString() {
  return 'ResizableAreaType.fixed(initial: $initial)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaTypeFixedCopyWith<$Res> implements $ResizableAreaTypeCopyWith<$Res> {
  factory $ResizableAreaTypeFixedCopyWith(ResizableAreaTypeFixed value, $Res Function(ResizableAreaTypeFixed) _then) = _$ResizableAreaTypeFixedCopyWithImpl;
@useResult
$Res call({
 double initial
});




}
/// @nodoc
class _$ResizableAreaTypeFixedCopyWithImpl<$Res>
    implements $ResizableAreaTypeFixedCopyWith<$Res> {
  _$ResizableAreaTypeFixedCopyWithImpl(this._self, this._then);

  final ResizableAreaTypeFixed _self;
  final $Res Function(ResizableAreaTypeFixed) _then;

/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initial = null,}) {
  return _then(ResizableAreaTypeFixed(
null == initial ? _self.initial : initial // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ResizableAreaTypeRatio extends ResizableAreaType {
  const ResizableAreaTypeRatio(this.ratio, {final  String? $type}): $type = $type ?? 'ratio',super._();
  factory ResizableAreaTypeRatio.fromJson(Map<String, dynamic> json) => _$ResizableAreaTypeRatioFromJson(json);

 final  double ratio;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaTypeRatioCopyWith<ResizableAreaTypeRatio> get copyWith => _$ResizableAreaTypeRatioCopyWithImpl<ResizableAreaTypeRatio>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResizableAreaTypeRatioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaTypeRatio&&(identical(other.ratio, ratio) || other.ratio == ratio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ratio);

@override
String toString() {
  return 'ResizableAreaType.ratio(ratio: $ratio)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaTypeRatioCopyWith<$Res> implements $ResizableAreaTypeCopyWith<$Res> {
  factory $ResizableAreaTypeRatioCopyWith(ResizableAreaTypeRatio value, $Res Function(ResizableAreaTypeRatio) _then) = _$ResizableAreaTypeRatioCopyWithImpl;
@useResult
$Res call({
 double ratio
});




}
/// @nodoc
class _$ResizableAreaTypeRatioCopyWithImpl<$Res>
    implements $ResizableAreaTypeRatioCopyWith<$Res> {
  _$ResizableAreaTypeRatioCopyWithImpl(this._self, this._then);

  final ResizableAreaTypeRatio _self;
  final $Res Function(ResizableAreaTypeRatio) _then;

/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ratio = null,}) {
  return _then(ResizableAreaTypeRatio(
null == ratio ? _self.ratio : ratio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ResizableAreaTypeWeight extends ResizableAreaType {
  const ResizableAreaTypeWeight(this.weight, {final  String? $type}): $type = $type ?? 'expand',super._();
  factory ResizableAreaTypeWeight.fromJson(Map<String, dynamic> json) => _$ResizableAreaTypeWeightFromJson(json);

 final  double weight;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaTypeWeightCopyWith<ResizableAreaTypeWeight> get copyWith => _$ResizableAreaTypeWeightCopyWithImpl<ResizableAreaTypeWeight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResizableAreaTypeWeightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaTypeWeight&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weight);

@override
String toString() {
  return 'ResizableAreaType.expand(weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaTypeWeightCopyWith<$Res> implements $ResizableAreaTypeCopyWith<$Res> {
  factory $ResizableAreaTypeWeightCopyWith(ResizableAreaTypeWeight value, $Res Function(ResizableAreaTypeWeight) _then) = _$ResizableAreaTypeWeightCopyWithImpl;
@useResult
$Res call({
 double weight
});




}
/// @nodoc
class _$ResizableAreaTypeWeightCopyWithImpl<$Res>
    implements $ResizableAreaTypeWeightCopyWith<$Res> {
  _$ResizableAreaTypeWeightCopyWithImpl(this._self, this._then);

  final ResizableAreaTypeWeight _self;
  final $Res Function(ResizableAreaTypeWeight) _then;

/// Create a copy of ResizableAreaType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weight = null,}) {
  return _then(ResizableAreaTypeWeight(
null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
