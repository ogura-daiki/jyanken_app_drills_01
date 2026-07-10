// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_arg_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WidgetArgDefinition _$WidgetArgDefinitionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'string':
          return WidgetArgDefinitionString.fromJson(
            json
          );
                case 'double':
          return WidgetArgDefinitionDouble.fromJson(
            json
          );
                case 'doubleNullable':
          return WidgetArgDefinitionDoubleNullable.fromJson(
            json
          );
                case 'colorNullable':
          return WidgetArgDefinitionColorNullable.fromJson(
            json
          );
                case 'crossAxisAlignment':
          return WidgetArgDefinitionCrossAxisAlignment.fromJson(
            json
          );
                case 'widget':
          return WidgetArgDefinitionWidget.fromJson(
            json
          );
                case 'widgetList':
          return WidgetArgDefinitionWidgetList.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WidgetArgDefinition',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WidgetArgDefinition {

 String get name; Object? get defaultValue;
/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionCopyWith<WidgetArgDefinition> get copyWith => _$WidgetArgDefinitionCopyWithImpl<WidgetArgDefinition>(this as WidgetArgDefinition, _$identity);

  /// Serializes this WidgetArgDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinition&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'WidgetArgDefinition(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionCopyWith<$Res>  {
  factory $WidgetArgDefinitionCopyWith(WidgetArgDefinition value, $Res Function(WidgetArgDefinition) _then) = _$WidgetArgDefinitionCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$WidgetArgDefinitionCopyWithImpl<$Res>
    implements $WidgetArgDefinitionCopyWith<$Res> {
  _$WidgetArgDefinitionCopyWithImpl(this._self, this._then);

  final WidgetArgDefinition _self;
  final $Res Function(WidgetArgDefinition) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetArgDefinition].
extension WidgetArgDefinitionPatterns on WidgetArgDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetArgDefinitionString value)?  string,TResult Function( WidgetArgDefinitionDouble value)?  double,TResult Function( WidgetArgDefinitionDoubleNullable value)?  doubleNullable,TResult Function( WidgetArgDefinitionColorNullable value)?  colorNullable,TResult Function( WidgetArgDefinitionCrossAxisAlignment value)?  crossAxisAlignment,TResult Function( WidgetArgDefinitionWidget value)?  widget,TResult Function( WidgetArgDefinitionWidgetList value)?  widgetList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetArgDefinitionString() when string != null:
return string(_that);case WidgetArgDefinitionDouble() when double != null:
return double(_that);case WidgetArgDefinitionDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case WidgetArgDefinitionColorNullable() when colorNullable != null:
return colorNullable(_that);case WidgetArgDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case WidgetArgDefinitionWidget() when widget != null:
return widget(_that);case WidgetArgDefinitionWidgetList() when widgetList != null:
return widgetList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetArgDefinitionString value)  string,required TResult Function( WidgetArgDefinitionDouble value)  double,required TResult Function( WidgetArgDefinitionDoubleNullable value)  doubleNullable,required TResult Function( WidgetArgDefinitionColorNullable value)  colorNullable,required TResult Function( WidgetArgDefinitionCrossAxisAlignment value)  crossAxisAlignment,required TResult Function( WidgetArgDefinitionWidget value)  widget,required TResult Function( WidgetArgDefinitionWidgetList value)  widgetList,}){
final _that = this;
switch (_that) {
case WidgetArgDefinitionString():
return string(_that);case WidgetArgDefinitionDouble():
return double(_that);case WidgetArgDefinitionDoubleNullable():
return doubleNullable(_that);case WidgetArgDefinitionColorNullable():
return colorNullable(_that);case WidgetArgDefinitionCrossAxisAlignment():
return crossAxisAlignment(_that);case WidgetArgDefinitionWidget():
return widget(_that);case WidgetArgDefinitionWidgetList():
return widgetList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetArgDefinitionString value)?  string,TResult? Function( WidgetArgDefinitionDouble value)?  double,TResult? Function( WidgetArgDefinitionDoubleNullable value)?  doubleNullable,TResult? Function( WidgetArgDefinitionColorNullable value)?  colorNullable,TResult? Function( WidgetArgDefinitionCrossAxisAlignment value)?  crossAxisAlignment,TResult? Function( WidgetArgDefinitionWidget value)?  widget,TResult? Function( WidgetArgDefinitionWidgetList value)?  widgetList,}){
final _that = this;
switch (_that) {
case WidgetArgDefinitionString() when string != null:
return string(_that);case WidgetArgDefinitionDouble() when double != null:
return double(_that);case WidgetArgDefinitionDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case WidgetArgDefinitionColorNullable() when colorNullable != null:
return colorNullable(_that);case WidgetArgDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case WidgetArgDefinitionWidget() when widget != null:
return widget(_that);case WidgetArgDefinitionWidgetList() when widgetList != null:
return widgetList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String defaultValue)?  string,TResult Function( String name,  double defaultValue)?  double,TResult Function( String name,  double? defaultValue)?  doubleNullable,TResult Function( String name,  ColorWrapper? defaultValue)?  colorNullable,TResult Function( String name,  CrossAxisAlignment defaultValue)?  crossAxisAlignment,TResult Function( String name,  WidgetEntity? defaultValue)?  widget,TResult Function( String name,  List<WidgetEntity> defaultValue)?  widgetList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WidgetArgDefinitionString() when string != null:
return string(_that.name,_that.defaultValue);case WidgetArgDefinitionDouble() when double != null:
return double(_that.name,_that.defaultValue);case WidgetArgDefinitionDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionColorNullable() when colorNullable != null:
return colorNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgDefinitionWidget() when widget != null:
return widget(_that.name,_that.defaultValue);case WidgetArgDefinitionWidgetList() when widgetList != null:
return widgetList(_that.name,_that.defaultValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String defaultValue)  string,required TResult Function( String name,  double defaultValue)  double,required TResult Function( String name,  double? defaultValue)  doubleNullable,required TResult Function( String name,  ColorWrapper? defaultValue)  colorNullable,required TResult Function( String name,  CrossAxisAlignment defaultValue)  crossAxisAlignment,required TResult Function( String name,  WidgetEntity? defaultValue)  widget,required TResult Function( String name,  List<WidgetEntity> defaultValue)  widgetList,}) {final _that = this;
switch (_that) {
case WidgetArgDefinitionString():
return string(_that.name,_that.defaultValue);case WidgetArgDefinitionDouble():
return double(_that.name,_that.defaultValue);case WidgetArgDefinitionDoubleNullable():
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionColorNullable():
return colorNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionCrossAxisAlignment():
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgDefinitionWidget():
return widget(_that.name,_that.defaultValue);case WidgetArgDefinitionWidgetList():
return widgetList(_that.name,_that.defaultValue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String defaultValue)?  string,TResult? Function( String name,  double defaultValue)?  double,TResult? Function( String name,  double? defaultValue)?  doubleNullable,TResult? Function( String name,  ColorWrapper? defaultValue)?  colorNullable,TResult? Function( String name,  CrossAxisAlignment defaultValue)?  crossAxisAlignment,TResult? Function( String name,  WidgetEntity? defaultValue)?  widget,TResult? Function( String name,  List<WidgetEntity> defaultValue)?  widgetList,}) {final _that = this;
switch (_that) {
case WidgetArgDefinitionString() when string != null:
return string(_that.name,_that.defaultValue);case WidgetArgDefinitionDouble() when double != null:
return double(_that.name,_that.defaultValue);case WidgetArgDefinitionDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionColorNullable() when colorNullable != null:
return colorNullable(_that.name,_that.defaultValue);case WidgetArgDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgDefinitionWidget() when widget != null:
return widget(_that.name,_that.defaultValue);case WidgetArgDefinitionWidgetList() when widgetList != null:
return widgetList(_that.name,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionString extends WidgetArgDefinition {
  const WidgetArgDefinitionString({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'string',super._();
  factory WidgetArgDefinitionString.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionStringFromJson(json);

@override final  String name;
@override final  String defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionStringCopyWith<WidgetArgDefinitionString> get copyWith => _$WidgetArgDefinitionStringCopyWithImpl<WidgetArgDefinitionString>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionStringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionString&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.string(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionStringCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionStringCopyWith(WidgetArgDefinitionString value, $Res Function(WidgetArgDefinitionString) _then) = _$WidgetArgDefinitionStringCopyWithImpl;
@override @useResult
$Res call({
 String name, String defaultValue
});




}
/// @nodoc
class _$WidgetArgDefinitionStringCopyWithImpl<$Res>
    implements $WidgetArgDefinitionStringCopyWith<$Res> {
  _$WidgetArgDefinitionStringCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionString _self;
  final $Res Function(WidgetArgDefinitionString) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgDefinitionString(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionDouble extends WidgetArgDefinition {
  const WidgetArgDefinitionDouble({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'double',super._();
  factory WidgetArgDefinitionDouble.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionDoubleFromJson(json);

@override final  String name;
@override final  double defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionDoubleCopyWith<WidgetArgDefinitionDouble> get copyWith => _$WidgetArgDefinitionDoubleCopyWithImpl<WidgetArgDefinitionDouble>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionDoubleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionDouble&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.double(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionDoubleCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionDoubleCopyWith(WidgetArgDefinitionDouble value, $Res Function(WidgetArgDefinitionDouble) _then) = _$WidgetArgDefinitionDoubleCopyWithImpl;
@override @useResult
$Res call({
 String name, double defaultValue
});




}
/// @nodoc
class _$WidgetArgDefinitionDoubleCopyWithImpl<$Res>
    implements $WidgetArgDefinitionDoubleCopyWith<$Res> {
  _$WidgetArgDefinitionDoubleCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionDouble _self;
  final $Res Function(WidgetArgDefinitionDouble) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgDefinitionDouble(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionDoubleNullable extends WidgetArgDefinition {
  const WidgetArgDefinitionDoubleNullable({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'doubleNullable',super._();
  factory WidgetArgDefinitionDoubleNullable.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionDoubleNullableFromJson(json);

@override final  String name;
@override final  double? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionDoubleNullableCopyWith<WidgetArgDefinitionDoubleNullable> get copyWith => _$WidgetArgDefinitionDoubleNullableCopyWithImpl<WidgetArgDefinitionDoubleNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionDoubleNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionDoubleNullable&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.doubleNullable(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionDoubleNullableCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionDoubleNullableCopyWith(WidgetArgDefinitionDoubleNullable value, $Res Function(WidgetArgDefinitionDoubleNullable) _then) = _$WidgetArgDefinitionDoubleNullableCopyWithImpl;
@override @useResult
$Res call({
 String name, double? defaultValue
});




}
/// @nodoc
class _$WidgetArgDefinitionDoubleNullableCopyWithImpl<$Res>
    implements $WidgetArgDefinitionDoubleNullableCopyWith<$Res> {
  _$WidgetArgDefinitionDoubleNullableCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionDoubleNullable _self;
  final $Res Function(WidgetArgDefinitionDoubleNullable) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgDefinitionDoubleNullable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionColorNullable extends WidgetArgDefinition {
  const WidgetArgDefinitionColorNullable({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'colorNullable',super._();
  factory WidgetArgDefinitionColorNullable.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionColorNullableFromJson(json);

@override final  String name;
@override final  ColorWrapper? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionColorNullableCopyWith<WidgetArgDefinitionColorNullable> get copyWith => _$WidgetArgDefinitionColorNullableCopyWithImpl<WidgetArgDefinitionColorNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionColorNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionColorNullable&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.colorNullable(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionColorNullableCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionColorNullableCopyWith(WidgetArgDefinitionColorNullable value, $Res Function(WidgetArgDefinitionColorNullable) _then) = _$WidgetArgDefinitionColorNullableCopyWithImpl;
@override @useResult
$Res call({
 String name, ColorWrapper? defaultValue
});


$ColorWrapperCopyWith<$Res>? get defaultValue;

}
/// @nodoc
class _$WidgetArgDefinitionColorNullableCopyWithImpl<$Res>
    implements $WidgetArgDefinitionColorNullableCopyWith<$Res> {
  _$WidgetArgDefinitionColorNullableCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionColorNullable _self;
  final $Res Function(WidgetArgDefinitionColorNullable) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgDefinitionColorNullable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,
  ));
}

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get defaultValue {
    if (_self.defaultValue == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.defaultValue!, (value) {
    return _then(_self.copyWith(defaultValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionCrossAxisAlignment extends WidgetArgDefinition {
  const WidgetArgDefinitionCrossAxisAlignment({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'crossAxisAlignment',super._();
  factory WidgetArgDefinitionCrossAxisAlignment.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionCrossAxisAlignmentFromJson(json);

@override final  String name;
@override final  CrossAxisAlignment defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionCrossAxisAlignmentCopyWith<WidgetArgDefinitionCrossAxisAlignment> get copyWith => _$WidgetArgDefinitionCrossAxisAlignmentCopyWithImpl<WidgetArgDefinitionCrossAxisAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionCrossAxisAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionCrossAxisAlignment&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.crossAxisAlignment(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionCrossAxisAlignmentCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionCrossAxisAlignmentCopyWith(WidgetArgDefinitionCrossAxisAlignment value, $Res Function(WidgetArgDefinitionCrossAxisAlignment) _then) = _$WidgetArgDefinitionCrossAxisAlignmentCopyWithImpl;
@override @useResult
$Res call({
 String name, CrossAxisAlignment defaultValue
});




}
/// @nodoc
class _$WidgetArgDefinitionCrossAxisAlignmentCopyWithImpl<$Res>
    implements $WidgetArgDefinitionCrossAxisAlignmentCopyWith<$Res> {
  _$WidgetArgDefinitionCrossAxisAlignmentCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionCrossAxisAlignment _self;
  final $Res Function(WidgetArgDefinitionCrossAxisAlignment) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgDefinitionCrossAxisAlignment(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionWidget extends WidgetArgDefinition implements CanHaveChildArg {
  const WidgetArgDefinitionWidget({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'widget',super._();
  factory WidgetArgDefinitionWidget.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionWidgetFromJson(json);

@override final  String name;
@override final  WidgetEntity? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionWidgetCopyWith<WidgetArgDefinitionWidget> get copyWith => _$WidgetArgDefinitionWidgetCopyWithImpl<WidgetArgDefinitionWidget>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionWidgetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionWidget&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArgDefinition.widget(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionWidgetCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionWidgetCopyWith(WidgetArgDefinitionWidget value, $Res Function(WidgetArgDefinitionWidget) _then) = _$WidgetArgDefinitionWidgetCopyWithImpl;
@override @useResult
$Res call({
 String name, WidgetEntity? defaultValue
});


$WidgetEntityCopyWith<$Res>? get defaultValue;

}
/// @nodoc
class _$WidgetArgDefinitionWidgetCopyWithImpl<$Res>
    implements $WidgetArgDefinitionWidgetCopyWith<$Res> {
  _$WidgetArgDefinitionWidgetCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionWidget _self;
  final $Res Function(WidgetArgDefinitionWidget) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgDefinitionWidget(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res>? get defaultValue {
    if (_self.defaultValue == null) {
    return null;
  }

  return $WidgetEntityCopyWith<$Res>(_self.defaultValue!, (value) {
    return _then(_self.copyWith(defaultValue: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetArgDefinitionWidgetList extends WidgetArgDefinition implements CanHaveChildArg {
  const WidgetArgDefinitionWidgetList({required this.name, required final  List<WidgetEntity> defaultValue, final  String? $type}): _defaultValue = defaultValue,$type = $type ?? 'widgetList',super._();
  factory WidgetArgDefinitionWidgetList.fromJson(Map<String, dynamic> json) => _$WidgetArgDefinitionWidgetListFromJson(json);

@override final  String name;
 final  List<WidgetEntity> _defaultValue;
@override List<WidgetEntity> get defaultValue {
  if (_defaultValue is EqualUnmodifiableListView) return _defaultValue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultValue);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDefinitionWidgetListCopyWith<WidgetArgDefinitionWidgetList> get copyWith => _$WidgetArgDefinitionWidgetListCopyWithImpl<WidgetArgDefinitionWidgetList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDefinitionWidgetListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDefinitionWidgetList&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._defaultValue, _defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_defaultValue));

@override
String toString() {
  return 'WidgetArgDefinition.widgetList(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDefinitionWidgetListCopyWith<$Res> implements $WidgetArgDefinitionCopyWith<$Res> {
  factory $WidgetArgDefinitionWidgetListCopyWith(WidgetArgDefinitionWidgetList value, $Res Function(WidgetArgDefinitionWidgetList) _then) = _$WidgetArgDefinitionWidgetListCopyWithImpl;
@override @useResult
$Res call({
 String name, List<WidgetEntity> defaultValue
});




}
/// @nodoc
class _$WidgetArgDefinitionWidgetListCopyWithImpl<$Res>
    implements $WidgetArgDefinitionWidgetListCopyWith<$Res> {
  _$WidgetArgDefinitionWidgetListCopyWithImpl(this._self, this._then);

  final WidgetArgDefinitionWidgetList _self;
  final $Res Function(WidgetArgDefinitionWidgetList) _then;

/// Create a copy of WidgetArgDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgDefinitionWidgetList(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self._defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

// dart format on
