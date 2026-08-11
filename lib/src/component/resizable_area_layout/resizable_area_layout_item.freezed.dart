// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resizable_area_layout_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ResizableAreaLayoutItem _$ResizableAreaLayoutItemFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'area':
          return ResizableAreaLayoutItemArea.fromJson(
            json
          );
                case 'thumb':
          return ResizableAreaLayoutItemThumb.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ResizableAreaLayoutItem',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ResizableAreaLayoutItem {

 int get layoutId;
/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaLayoutItemCopyWith<ResizableAreaLayoutItem> get copyWith => _$ResizableAreaLayoutItemCopyWithImpl<ResizableAreaLayoutItem>(this as ResizableAreaLayoutItem, _$identity);

  /// Serializes this ResizableAreaLayoutItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaLayoutItem&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,layoutId);

@override
String toString() {
  return 'ResizableAreaLayoutItem(layoutId: $layoutId)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaLayoutItemCopyWith<$Res>  {
  factory $ResizableAreaLayoutItemCopyWith(ResizableAreaLayoutItem value, $Res Function(ResizableAreaLayoutItem) _then) = _$ResizableAreaLayoutItemCopyWithImpl;
@useResult
$Res call({
 int layoutId
});




}
/// @nodoc
class _$ResizableAreaLayoutItemCopyWithImpl<$Res>
    implements $ResizableAreaLayoutItemCopyWith<$Res> {
  _$ResizableAreaLayoutItemCopyWithImpl(this._self, this._then);

  final ResizableAreaLayoutItem _self;
  final $Res Function(ResizableAreaLayoutItem) _then;

/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? layoutId = null,}) {
  return _then(_self.copyWith(
layoutId: null == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ResizableAreaLayoutItem].
extension ResizableAreaLayoutItemPatterns on ResizableAreaLayoutItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResizableAreaLayoutItemArea value)?  area,TResult Function( ResizableAreaLayoutItemThumb value)?  thumb,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea() when area != null:
return area(_that);case ResizableAreaLayoutItemThumb() when thumb != null:
return thumb(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResizableAreaLayoutItemArea value)  area,required TResult Function( ResizableAreaLayoutItemThumb value)  thumb,}){
final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea():
return area(_that);case ResizableAreaLayoutItemThumb():
return thumb(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResizableAreaLayoutItemArea value)?  area,TResult? Function( ResizableAreaLayoutItemThumb value)?  thumb,}){
final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea() when area != null:
return area(_that);case ResizableAreaLayoutItemThumb() when thumb != null:
return thumb(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String areaName,  int layoutId)?  area,TResult Function( int layoutId,  int thumbIndex)?  thumb,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea() when area != null:
return area(_that.areaName,_that.layoutId);case ResizableAreaLayoutItemThumb() when thumb != null:
return thumb(_that.layoutId,_that.thumbIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String areaName,  int layoutId)  area,required TResult Function( int layoutId,  int thumbIndex)  thumb,}) {final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea():
return area(_that.areaName,_that.layoutId);case ResizableAreaLayoutItemThumb():
return thumb(_that.layoutId,_that.thumbIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String areaName,  int layoutId)?  area,TResult? Function( int layoutId,  int thumbIndex)?  thumb,}) {final _that = this;
switch (_that) {
case ResizableAreaLayoutItemArea() when area != null:
return area(_that.areaName,_that.layoutId);case ResizableAreaLayoutItemThumb() when thumb != null:
return thumb(_that.layoutId,_that.thumbIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ResizableAreaLayoutItemArea extends ResizableAreaLayoutItem {
  const ResizableAreaLayoutItemArea({required this.areaName, required this.layoutId, final  String? $type}): $type = $type ?? 'area',super._();
  factory ResizableAreaLayoutItemArea.fromJson(Map<String, dynamic> json) => _$ResizableAreaLayoutItemAreaFromJson(json);

 final  String areaName;
@override final  int layoutId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaLayoutItemAreaCopyWith<ResizableAreaLayoutItemArea> get copyWith => _$ResizableAreaLayoutItemAreaCopyWithImpl<ResizableAreaLayoutItemArea>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResizableAreaLayoutItemAreaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaLayoutItemArea&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,areaName,layoutId);

@override
String toString() {
  return 'ResizableAreaLayoutItem.area(areaName: $areaName, layoutId: $layoutId)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaLayoutItemAreaCopyWith<$Res> implements $ResizableAreaLayoutItemCopyWith<$Res> {
  factory $ResizableAreaLayoutItemAreaCopyWith(ResizableAreaLayoutItemArea value, $Res Function(ResizableAreaLayoutItemArea) _then) = _$ResizableAreaLayoutItemAreaCopyWithImpl;
@override @useResult
$Res call({
 String areaName, int layoutId
});




}
/// @nodoc
class _$ResizableAreaLayoutItemAreaCopyWithImpl<$Res>
    implements $ResizableAreaLayoutItemAreaCopyWith<$Res> {
  _$ResizableAreaLayoutItemAreaCopyWithImpl(this._self, this._then);

  final ResizableAreaLayoutItemArea _self;
  final $Res Function(ResizableAreaLayoutItemArea) _then;

/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaName = null,Object? layoutId = null,}) {
  return _then(ResizableAreaLayoutItemArea(
areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,layoutId: null == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ResizableAreaLayoutItemThumb extends ResizableAreaLayoutItem {
  const ResizableAreaLayoutItemThumb({required this.layoutId, required this.thumbIndex, final  String? $type}): $type = $type ?? 'thumb',super._();
  factory ResizableAreaLayoutItemThumb.fromJson(Map<String, dynamic> json) => _$ResizableAreaLayoutItemThumbFromJson(json);

@override final  int layoutId;
 final  int thumbIndex;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResizableAreaLayoutItemThumbCopyWith<ResizableAreaLayoutItemThumb> get copyWith => _$ResizableAreaLayoutItemThumbCopyWithImpl<ResizableAreaLayoutItemThumb>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResizableAreaLayoutItemThumbToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResizableAreaLayoutItemThumb&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.thumbIndex, thumbIndex) || other.thumbIndex == thumbIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,layoutId,thumbIndex);

@override
String toString() {
  return 'ResizableAreaLayoutItem.thumb(layoutId: $layoutId, thumbIndex: $thumbIndex)';
}


}

/// @nodoc
abstract mixin class $ResizableAreaLayoutItemThumbCopyWith<$Res> implements $ResizableAreaLayoutItemCopyWith<$Res> {
  factory $ResizableAreaLayoutItemThumbCopyWith(ResizableAreaLayoutItemThumb value, $Res Function(ResizableAreaLayoutItemThumb) _then) = _$ResizableAreaLayoutItemThumbCopyWithImpl;
@override @useResult
$Res call({
 int layoutId, int thumbIndex
});




}
/// @nodoc
class _$ResizableAreaLayoutItemThumbCopyWithImpl<$Res>
    implements $ResizableAreaLayoutItemThumbCopyWith<$Res> {
  _$ResizableAreaLayoutItemThumbCopyWithImpl(this._self, this._then);

  final ResizableAreaLayoutItemThumb _self;
  final $Res Function(ResizableAreaLayoutItemThumb) _then;

/// Create a copy of ResizableAreaLayoutItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? layoutId = null,Object? thumbIndex = null,}) {
  return _then(ResizableAreaLayoutItemThumb(
layoutId: null == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int,thumbIndex: null == thumbIndex ? _self.thumbIndex : thumbIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
