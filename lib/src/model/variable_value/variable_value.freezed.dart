// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
VariableValue _$VariableValueFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'string':
          return VariableValueString.fromJson(
            json
          );
                case 'double':
          return VariableValueDouble.fromJson(
            json
          );
                case 'doubleNullable':
          return VariableValueDoubleNullable.fromJson(
            json
          );
                case 'colorNullable':
          return VariableValueColorNullable.fromJson(
            json
          );
                case 'crossAxisAlignment':
          return VariableValueCrossAxisAlignment.fromJson(
            json
          );
                case 'mainAxisAlignment':
          return VariableValueMainAxisAlignment.fromJson(
            json
          );
                case 'mainAxisSize':
          return VariableValueMainAxisSize.fromJson(
            json
          );
                case 'widget':
          return VariableValueWidget.fromJson(
            json
          );
                case 'widgetList':
          return VariableValueWidgetList.fromJson(
            json
          );
                case 'alignment':
          return VariableValueAlignment.fromJson(
            json
          );
                case 'textStyle':
          return VariableValueTextStyle.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'VariableValue',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$VariableValue {

 Object? get rawValue;

  /// Serializes this VariableValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValue&&const DeepCollectionEquality().equals(other.rawValue, rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rawValue));

@override
String toString() {
  return 'VariableValue(rawValue: $rawValue)';
}


}

/// @nodoc
class $VariableValueCopyWith<$Res>  {
$VariableValueCopyWith(VariableValue _, $Res Function(VariableValue) __);
}


/// Adds pattern-matching-related methods to [VariableValue].
extension VariableValuePatterns on VariableValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VariableValueString value)?  string,TResult Function( VariableValueDouble value)?  double,TResult Function( VariableValueDoubleNullable value)?  doubleNullable,TResult Function( VariableValueColorNullable value)?  colorNullable,TResult Function( VariableValueCrossAxisAlignment value)?  crossAxisAlignment,TResult Function( VariableValueMainAxisAlignment value)?  mainAxisAlignment,TResult Function( VariableValueMainAxisSize value)?  mainAxisSize,TResult Function( VariableValueWidget value)?  widget,TResult Function( VariableValueWidgetList value)?  widgetList,TResult Function( VariableValueAlignment value)?  alignment,TResult Function( VariableValueTextStyle value)?  textStyle,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VariableValueString() when string != null:
return string(_that);case VariableValueDouble() when double != null:
return double(_that);case VariableValueDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case VariableValueColorNullable() when colorNullable != null:
return colorNullable(_that);case VariableValueCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case VariableValueMainAxisAlignment() when mainAxisAlignment != null:
return mainAxisAlignment(_that);case VariableValueMainAxisSize() when mainAxisSize != null:
return mainAxisSize(_that);case VariableValueWidget() when widget != null:
return widget(_that);case VariableValueWidgetList() when widgetList != null:
return widgetList(_that);case VariableValueAlignment() when alignment != null:
return alignment(_that);case VariableValueTextStyle() when textStyle != null:
return textStyle(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VariableValueString value)  string,required TResult Function( VariableValueDouble value)  double,required TResult Function( VariableValueDoubleNullable value)  doubleNullable,required TResult Function( VariableValueColorNullable value)  colorNullable,required TResult Function( VariableValueCrossAxisAlignment value)  crossAxisAlignment,required TResult Function( VariableValueMainAxisAlignment value)  mainAxisAlignment,required TResult Function( VariableValueMainAxisSize value)  mainAxisSize,required TResult Function( VariableValueWidget value)  widget,required TResult Function( VariableValueWidgetList value)  widgetList,required TResult Function( VariableValueAlignment value)  alignment,required TResult Function( VariableValueTextStyle value)  textStyle,}){
final _that = this;
switch (_that) {
case VariableValueString():
return string(_that);case VariableValueDouble():
return double(_that);case VariableValueDoubleNullable():
return doubleNullable(_that);case VariableValueColorNullable():
return colorNullable(_that);case VariableValueCrossAxisAlignment():
return crossAxisAlignment(_that);case VariableValueMainAxisAlignment():
return mainAxisAlignment(_that);case VariableValueMainAxisSize():
return mainAxisSize(_that);case VariableValueWidget():
return widget(_that);case VariableValueWidgetList():
return widgetList(_that);case VariableValueAlignment():
return alignment(_that);case VariableValueTextStyle():
return textStyle(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VariableValueString value)?  string,TResult? Function( VariableValueDouble value)?  double,TResult? Function( VariableValueDoubleNullable value)?  doubleNullable,TResult? Function( VariableValueColorNullable value)?  colorNullable,TResult? Function( VariableValueCrossAxisAlignment value)?  crossAxisAlignment,TResult? Function( VariableValueMainAxisAlignment value)?  mainAxisAlignment,TResult? Function( VariableValueMainAxisSize value)?  mainAxisSize,TResult? Function( VariableValueWidget value)?  widget,TResult? Function( VariableValueWidgetList value)?  widgetList,TResult? Function( VariableValueAlignment value)?  alignment,TResult? Function( VariableValueTextStyle value)?  textStyle,}){
final _that = this;
switch (_that) {
case VariableValueString() when string != null:
return string(_that);case VariableValueDouble() when double != null:
return double(_that);case VariableValueDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case VariableValueColorNullable() when colorNullable != null:
return colorNullable(_that);case VariableValueCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case VariableValueMainAxisAlignment() when mainAxisAlignment != null:
return mainAxisAlignment(_that);case VariableValueMainAxisSize() when mainAxisSize != null:
return mainAxisSize(_that);case VariableValueWidget() when widget != null:
return widget(_that);case VariableValueWidgetList() when widgetList != null:
return widgetList(_that);case VariableValueAlignment() when alignment != null:
return alignment(_that);case VariableValueTextStyle() when textStyle != null:
return textStyle(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String rawValue)?  string,TResult Function( double rawValue)?  double,TResult Function( double? rawValue)?  doubleNullable,TResult Function( ColorWrapper? rawValue)?  colorNullable,TResult Function( CrossAxisAlignment rawValue)?  crossAxisAlignment,TResult Function( MainAxisAlignment rawValue)?  mainAxisAlignment,TResult Function( MainAxisSize rawValue)?  mainAxisSize,TResult Function( WidgetEntity? rawValue)?  widget,TResult Function( List<WidgetEntity> rawValue)?  widgetList,TResult Function( AlignmentWrapper rawValue)?  alignment,TResult Function( TextStyleWrapper? rawValue)?  textStyle,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VariableValueString() when string != null:
return string(_that.rawValue);case VariableValueDouble() when double != null:
return double(_that.rawValue);case VariableValueDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.rawValue);case VariableValueColorNullable() when colorNullable != null:
return colorNullable(_that.rawValue);case VariableValueCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.rawValue);case VariableValueMainAxisAlignment() when mainAxisAlignment != null:
return mainAxisAlignment(_that.rawValue);case VariableValueMainAxisSize() when mainAxisSize != null:
return mainAxisSize(_that.rawValue);case VariableValueWidget() when widget != null:
return widget(_that.rawValue);case VariableValueWidgetList() when widgetList != null:
return widgetList(_that.rawValue);case VariableValueAlignment() when alignment != null:
return alignment(_that.rawValue);case VariableValueTextStyle() when textStyle != null:
return textStyle(_that.rawValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String rawValue)  string,required TResult Function( double rawValue)  double,required TResult Function( double? rawValue)  doubleNullable,required TResult Function( ColorWrapper? rawValue)  colorNullable,required TResult Function( CrossAxisAlignment rawValue)  crossAxisAlignment,required TResult Function( MainAxisAlignment rawValue)  mainAxisAlignment,required TResult Function( MainAxisSize rawValue)  mainAxisSize,required TResult Function( WidgetEntity? rawValue)  widget,required TResult Function( List<WidgetEntity> rawValue)  widgetList,required TResult Function( AlignmentWrapper rawValue)  alignment,required TResult Function( TextStyleWrapper? rawValue)  textStyle,}) {final _that = this;
switch (_that) {
case VariableValueString():
return string(_that.rawValue);case VariableValueDouble():
return double(_that.rawValue);case VariableValueDoubleNullable():
return doubleNullable(_that.rawValue);case VariableValueColorNullable():
return colorNullable(_that.rawValue);case VariableValueCrossAxisAlignment():
return crossAxisAlignment(_that.rawValue);case VariableValueMainAxisAlignment():
return mainAxisAlignment(_that.rawValue);case VariableValueMainAxisSize():
return mainAxisSize(_that.rawValue);case VariableValueWidget():
return widget(_that.rawValue);case VariableValueWidgetList():
return widgetList(_that.rawValue);case VariableValueAlignment():
return alignment(_that.rawValue);case VariableValueTextStyle():
return textStyle(_that.rawValue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String rawValue)?  string,TResult? Function( double rawValue)?  double,TResult? Function( double? rawValue)?  doubleNullable,TResult? Function( ColorWrapper? rawValue)?  colorNullable,TResult? Function( CrossAxisAlignment rawValue)?  crossAxisAlignment,TResult? Function( MainAxisAlignment rawValue)?  mainAxisAlignment,TResult? Function( MainAxisSize rawValue)?  mainAxisSize,TResult? Function( WidgetEntity? rawValue)?  widget,TResult? Function( List<WidgetEntity> rawValue)?  widgetList,TResult? Function( AlignmentWrapper rawValue)?  alignment,TResult? Function( TextStyleWrapper? rawValue)?  textStyle,}) {final _that = this;
switch (_that) {
case VariableValueString() when string != null:
return string(_that.rawValue);case VariableValueDouble() when double != null:
return double(_that.rawValue);case VariableValueDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.rawValue);case VariableValueColorNullable() when colorNullable != null:
return colorNullable(_that.rawValue);case VariableValueCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.rawValue);case VariableValueMainAxisAlignment() when mainAxisAlignment != null:
return mainAxisAlignment(_that.rawValue);case VariableValueMainAxisSize() when mainAxisSize != null:
return mainAxisSize(_that.rawValue);case VariableValueWidget() when widget != null:
return widget(_that.rawValue);case VariableValueWidgetList() when widgetList != null:
return widgetList(_that.rawValue);case VariableValueAlignment() when alignment != null:
return alignment(_that.rawValue);case VariableValueTextStyle() when textStyle != null:
return textStyle(_that.rawValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class VariableValueString extends VariableValue {
  const VariableValueString({required this.rawValue, final  String? $type}): $type = $type ?? 'string',super._();
  factory VariableValueString.fromJson(Map<String, dynamic> json) => _$VariableValueStringFromJson(json);

@override final  String rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueStringCopyWith<VariableValueString> get copyWith => _$VariableValueStringCopyWithImpl<VariableValueString>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueStringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueString&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.string(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueStringCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueStringCopyWith(VariableValueString value, $Res Function(VariableValueString) _then) = _$VariableValueStringCopyWithImpl;
@useResult
$Res call({
 String rawValue
});




}
/// @nodoc
class _$VariableValueStringCopyWithImpl<$Res>
    implements $VariableValueStringCopyWith<$Res> {
  _$VariableValueStringCopyWithImpl(this._self, this._then);

  final VariableValueString _self;
  final $Res Function(VariableValueString) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueString(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueDouble extends VariableValue {
  const VariableValueDouble({required this.rawValue, final  String? $type}): $type = $type ?? 'double',super._();
  factory VariableValueDouble.fromJson(Map<String, dynamic> json) => _$VariableValueDoubleFromJson(json);

@override final  double rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueDoubleCopyWith<VariableValueDouble> get copyWith => _$VariableValueDoubleCopyWithImpl<VariableValueDouble>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueDoubleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueDouble&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.double(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueDoubleCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueDoubleCopyWith(VariableValueDouble value, $Res Function(VariableValueDouble) _then) = _$VariableValueDoubleCopyWithImpl;
@useResult
$Res call({
 double rawValue
});




}
/// @nodoc
class _$VariableValueDoubleCopyWithImpl<$Res>
    implements $VariableValueDoubleCopyWith<$Res> {
  _$VariableValueDoubleCopyWithImpl(this._self, this._then);

  final VariableValueDouble _self;
  final $Res Function(VariableValueDouble) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueDouble(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueDoubleNullable extends VariableValue implements VariableTypeNullable {
  const VariableValueDoubleNullable({required this.rawValue, final  String? $type}): $type = $type ?? 'doubleNullable',super._();
  factory VariableValueDoubleNullable.fromJson(Map<String, dynamic> json) => _$VariableValueDoubleNullableFromJson(json);

@override final  double? rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueDoubleNullableCopyWith<VariableValueDoubleNullable> get copyWith => _$VariableValueDoubleNullableCopyWithImpl<VariableValueDoubleNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueDoubleNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueDoubleNullable&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.doubleNullable(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueDoubleNullableCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueDoubleNullableCopyWith(VariableValueDoubleNullable value, $Res Function(VariableValueDoubleNullable) _then) = _$VariableValueDoubleNullableCopyWithImpl;
@useResult
$Res call({
 double? rawValue
});




}
/// @nodoc
class _$VariableValueDoubleNullableCopyWithImpl<$Res>
    implements $VariableValueDoubleNullableCopyWith<$Res> {
  _$VariableValueDoubleNullableCopyWithImpl(this._self, this._then);

  final VariableValueDoubleNullable _self;
  final $Res Function(VariableValueDoubleNullable) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = freezed,}) {
  return _then(VariableValueDoubleNullable(
rawValue: freezed == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueColorNullable extends VariableValue implements VariableTypeNullable {
  const VariableValueColorNullable({required this.rawValue, final  String? $type}): $type = $type ?? 'colorNullable',super._();
  factory VariableValueColorNullable.fromJson(Map<String, dynamic> json) => _$VariableValueColorNullableFromJson(json);

@override final  ColorWrapper? rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueColorNullableCopyWith<VariableValueColorNullable> get copyWith => _$VariableValueColorNullableCopyWithImpl<VariableValueColorNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueColorNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueColorNullable&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.colorNullable(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueColorNullableCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueColorNullableCopyWith(VariableValueColorNullable value, $Res Function(VariableValueColorNullable) _then) = _$VariableValueColorNullableCopyWithImpl;
@useResult
$Res call({
 ColorWrapper? rawValue
});


$ColorWrapperCopyWith<$Res>? get rawValue;

}
/// @nodoc
class _$VariableValueColorNullableCopyWithImpl<$Res>
    implements $VariableValueColorNullableCopyWith<$Res> {
  _$VariableValueColorNullableCopyWithImpl(this._self, this._then);

  final VariableValueColorNullable _self;
  final $Res Function(VariableValueColorNullable) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = freezed,}) {
  return _then(VariableValueColorNullable(
rawValue: freezed == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,
  ));
}

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get rawValue {
    if (_self.rawValue == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.rawValue!, (value) {
    return _then(_self.copyWith(rawValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class VariableValueCrossAxisAlignment extends VariableValue {
  const VariableValueCrossAxisAlignment({required this.rawValue, final  String? $type}): $type = $type ?? 'crossAxisAlignment',super._();
  factory VariableValueCrossAxisAlignment.fromJson(Map<String, dynamic> json) => _$VariableValueCrossAxisAlignmentFromJson(json);

@override final  CrossAxisAlignment rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueCrossAxisAlignmentCopyWith<VariableValueCrossAxisAlignment> get copyWith => _$VariableValueCrossAxisAlignmentCopyWithImpl<VariableValueCrossAxisAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueCrossAxisAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueCrossAxisAlignment&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.crossAxisAlignment(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueCrossAxisAlignmentCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueCrossAxisAlignmentCopyWith(VariableValueCrossAxisAlignment value, $Res Function(VariableValueCrossAxisAlignment) _then) = _$VariableValueCrossAxisAlignmentCopyWithImpl;
@useResult
$Res call({
 CrossAxisAlignment rawValue
});




}
/// @nodoc
class _$VariableValueCrossAxisAlignmentCopyWithImpl<$Res>
    implements $VariableValueCrossAxisAlignmentCopyWith<$Res> {
  _$VariableValueCrossAxisAlignmentCopyWithImpl(this._self, this._then);

  final VariableValueCrossAxisAlignment _self;
  final $Res Function(VariableValueCrossAxisAlignment) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueCrossAxisAlignment(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueMainAxisAlignment extends VariableValue {
  const VariableValueMainAxisAlignment({required this.rawValue, final  String? $type}): $type = $type ?? 'mainAxisAlignment',super._();
  factory VariableValueMainAxisAlignment.fromJson(Map<String, dynamic> json) => _$VariableValueMainAxisAlignmentFromJson(json);

@override final  MainAxisAlignment rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueMainAxisAlignmentCopyWith<VariableValueMainAxisAlignment> get copyWith => _$VariableValueMainAxisAlignmentCopyWithImpl<VariableValueMainAxisAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueMainAxisAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueMainAxisAlignment&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.mainAxisAlignment(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueMainAxisAlignmentCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueMainAxisAlignmentCopyWith(VariableValueMainAxisAlignment value, $Res Function(VariableValueMainAxisAlignment) _then) = _$VariableValueMainAxisAlignmentCopyWithImpl;
@useResult
$Res call({
 MainAxisAlignment rawValue
});




}
/// @nodoc
class _$VariableValueMainAxisAlignmentCopyWithImpl<$Res>
    implements $VariableValueMainAxisAlignmentCopyWith<$Res> {
  _$VariableValueMainAxisAlignmentCopyWithImpl(this._self, this._then);

  final VariableValueMainAxisAlignment _self;
  final $Res Function(VariableValueMainAxisAlignment) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueMainAxisAlignment(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as MainAxisAlignment,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueMainAxisSize extends VariableValue {
  const VariableValueMainAxisSize({required this.rawValue, final  String? $type}): $type = $type ?? 'mainAxisSize',super._();
  factory VariableValueMainAxisSize.fromJson(Map<String, dynamic> json) => _$VariableValueMainAxisSizeFromJson(json);

@override final  MainAxisSize rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueMainAxisSizeCopyWith<VariableValueMainAxisSize> get copyWith => _$VariableValueMainAxisSizeCopyWithImpl<VariableValueMainAxisSize>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueMainAxisSizeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueMainAxisSize&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.mainAxisSize(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueMainAxisSizeCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueMainAxisSizeCopyWith(VariableValueMainAxisSize value, $Res Function(VariableValueMainAxisSize) _then) = _$VariableValueMainAxisSizeCopyWithImpl;
@useResult
$Res call({
 MainAxisSize rawValue
});




}
/// @nodoc
class _$VariableValueMainAxisSizeCopyWithImpl<$Res>
    implements $VariableValueMainAxisSizeCopyWith<$Res> {
  _$VariableValueMainAxisSizeCopyWithImpl(this._self, this._then);

  final VariableValueMainAxisSize _self;
  final $Res Function(VariableValueMainAxisSize) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueMainAxisSize(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as MainAxisSize,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueWidget extends VariableValue implements VariableTypeNullable, VariableTypeWidget {
  const VariableValueWidget({required this.rawValue, final  String? $type}): $type = $type ?? 'widget',super._();
  factory VariableValueWidget.fromJson(Map<String, dynamic> json) => _$VariableValueWidgetFromJson(json);

@override final  WidgetEntity? rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueWidgetCopyWith<VariableValueWidget> get copyWith => _$VariableValueWidgetCopyWithImpl<VariableValueWidget>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueWidgetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueWidget&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.widget(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueWidgetCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueWidgetCopyWith(VariableValueWidget value, $Res Function(VariableValueWidget) _then) = _$VariableValueWidgetCopyWithImpl;
@useResult
$Res call({
 WidgetEntity? rawValue
});


$WidgetEntityCopyWith<$Res>? get rawValue;

}
/// @nodoc
class _$VariableValueWidgetCopyWithImpl<$Res>
    implements $VariableValueWidgetCopyWith<$Res> {
  _$VariableValueWidgetCopyWithImpl(this._self, this._then);

  final VariableValueWidget _self;
  final $Res Function(VariableValueWidget) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = freezed,}) {
  return _then(VariableValueWidget(
rawValue: freezed == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get rawValue {
    if (_self.rawValue == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.rawValue!, (value) {
    return _then(_self.copyWith(rawValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class VariableValueWidgetList extends VariableValue implements VariableTypeWidget {
  const VariableValueWidgetList({required final  List<WidgetEntity> rawValue, final  String? $type}): _rawValue = rawValue,$type = $type ?? 'widgetList',super._();
  factory VariableValueWidgetList.fromJson(Map<String, dynamic> json) => _$VariableValueWidgetListFromJson(json);

 final  List<WidgetEntity> _rawValue;
@override List<WidgetEntity> get rawValue {
  if (_rawValue is EqualUnmodifiableListView) return _rawValue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rawValue);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueWidgetListCopyWith<VariableValueWidgetList> get copyWith => _$VariableValueWidgetListCopyWithImpl<VariableValueWidgetList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueWidgetListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueWidgetList&&const DeepCollectionEquality().equals(other._rawValue, _rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rawValue));

@override
String toString() {
  return 'VariableValue.widgetList(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueWidgetListCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueWidgetListCopyWith(VariableValueWidgetList value, $Res Function(VariableValueWidgetList) _then) = _$VariableValueWidgetListCopyWithImpl;
@useResult
$Res call({
 List<WidgetEntity> rawValue
});




}
/// @nodoc
class _$VariableValueWidgetListCopyWithImpl<$Res>
    implements $VariableValueWidgetListCopyWith<$Res> {
  _$VariableValueWidgetListCopyWithImpl(this._self, this._then);

  final VariableValueWidgetList _self;
  final $Res Function(VariableValueWidgetList) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueWidgetList(
rawValue: null == rawValue ? _self._rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VariableValueAlignment extends VariableValue {
  const VariableValueAlignment({required this.rawValue, final  String? $type}): $type = $type ?? 'alignment',super._();
  factory VariableValueAlignment.fromJson(Map<String, dynamic> json) => _$VariableValueAlignmentFromJson(json);

@override final  AlignmentWrapper rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueAlignmentCopyWith<VariableValueAlignment> get copyWith => _$VariableValueAlignmentCopyWithImpl<VariableValueAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueAlignment&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.alignment(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueAlignmentCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueAlignmentCopyWith(VariableValueAlignment value, $Res Function(VariableValueAlignment) _then) = _$VariableValueAlignmentCopyWithImpl;
@useResult
$Res call({
 AlignmentWrapper rawValue
});


$AlignmentWrapperCopyWith<$Res> get rawValue;

}
/// @nodoc
class _$VariableValueAlignmentCopyWithImpl<$Res>
    implements $VariableValueAlignmentCopyWith<$Res> {
  _$VariableValueAlignmentCopyWithImpl(this._self, this._then);

  final VariableValueAlignment _self;
  final $Res Function(VariableValueAlignment) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = null,}) {
  return _then(VariableValueAlignment(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as AlignmentWrapper,
  ));
}

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlignmentWrapperCopyWith<$Res> get rawValue {
  
  return $AlignmentWrapperCopyWith<$Res>(_self.rawValue, (value) {
    return _then(_self.copyWith(rawValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class VariableValueTextStyle extends VariableValue implements VariableTypeNullable {
  const VariableValueTextStyle({required this.rawValue, final  String? $type}): $type = $type ?? 'textStyle',super._();
  factory VariableValueTextStyle.fromJson(Map<String, dynamic> json) => _$VariableValueTextStyleFromJson(json);

@override final  TextStyleWrapper? rawValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariableValueTextStyleCopyWith<VariableValueTextStyle> get copyWith => _$VariableValueTextStyleCopyWithImpl<VariableValueTextStyle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariableValueTextStyleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariableValueTextStyle&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawValue);

@override
String toString() {
  return 'VariableValue.textStyle(rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $VariableValueTextStyleCopyWith<$Res> implements $VariableValueCopyWith<$Res> {
  factory $VariableValueTextStyleCopyWith(VariableValueTextStyle value, $Res Function(VariableValueTextStyle) _then) = _$VariableValueTextStyleCopyWithImpl;
@useResult
$Res call({
 TextStyleWrapper? rawValue
});


$TextStyleWrapperCopyWith<$Res>? get rawValue;

}
/// @nodoc
class _$VariableValueTextStyleCopyWithImpl<$Res>
    implements $VariableValueTextStyleCopyWith<$Res> {
  _$VariableValueTextStyleCopyWithImpl(this._self, this._then);

  final VariableValueTextStyle _self;
  final $Res Function(VariableValueTextStyle) _then;

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawValue = freezed,}) {
  return _then(VariableValueTextStyle(
rawValue: freezed == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as TextStyleWrapper?,
  ));
}

/// Create a copy of VariableValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextStyleWrapperCopyWith<$Res>? get rawValue {
    if (_self.rawValue == null) {
    return null;
  }

  return $TextStyleWrapperCopyWith<$Res>(_self.rawValue!, (value) {
    return _then(_self.copyWith(rawValue: value));
  });
}
}

// dart format on
