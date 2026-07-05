// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WidgetArg _$WidgetArgFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'string':
          return WidgetArgString.fromJson(
            json
          );
                case 'double':
          return WidgetArgDouble.fromJson(
            json
          );
                case 'doubleNullable':
          return WidgetArgDoubleNullable.fromJson(
            json
          );
                case 'colorNullable':
          return WidgetArgColorNullable.fromJson(
            json
          );
                case 'crossAxisAlignment':
          return WidgetArgCrossAxisAlignment.fromJson(
            json
          );
                case 'widget':
          return WidgetArgWidget.fromJson(
            json
          );
                case 'widgetList':
          return WidgetArgWidgetList.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WidgetArg',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WidgetArg {

 String get name; Object? get defaultValue;
/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgCopyWith<WidgetArg> get copyWith => _$WidgetArgCopyWithImpl<WidgetArg>(this as WidgetArg, _$identity);

  /// Serializes this WidgetArg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArg&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'WidgetArg(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgCopyWith<$Res>  {
  factory $WidgetArgCopyWith(WidgetArg value, $Res Function(WidgetArg) _then) = _$WidgetArgCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$WidgetArgCopyWithImpl<$Res>
    implements $WidgetArgCopyWith<$Res> {
  _$WidgetArgCopyWithImpl(this._self, this._then);

  final WidgetArg _self;
  final $Res Function(WidgetArg) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetArg].
extension WidgetArgPatterns on WidgetArg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetArgString value)?  string,TResult Function( WidgetArgDouble value)?  double,TResult Function( WidgetArgDoubleNullable value)?  doubleNullable,TResult Function( WidgetArgColorNullable value)?  colorNullable,TResult Function( WidgetArgCrossAxisAlignment value)?  crossAxisAlignment,TResult Function( WidgetArgWidget value)?  widget,TResult Function( WidgetArgWidgetList value)?  widgetList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetArgString() when string != null:
return string(_that);case WidgetArgDouble() when double != null:
return double(_that);case WidgetArgDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case WidgetArgColorNullable() when colorNullable != null:
return colorNullable(_that);case WidgetArgCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case WidgetArgWidget() when widget != null:
return widget(_that);case WidgetArgWidgetList() when widgetList != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetArgString value)  string,required TResult Function( WidgetArgDouble value)  double,required TResult Function( WidgetArgDoubleNullable value)  doubleNullable,required TResult Function( WidgetArgColorNullable value)  colorNullable,required TResult Function( WidgetArgCrossAxisAlignment value)  crossAxisAlignment,required TResult Function( WidgetArgWidget value)  widget,required TResult Function( WidgetArgWidgetList value)  widgetList,}){
final _that = this;
switch (_that) {
case WidgetArgString():
return string(_that);case WidgetArgDouble():
return double(_that);case WidgetArgDoubleNullable():
return doubleNullable(_that);case WidgetArgColorNullable():
return colorNullable(_that);case WidgetArgCrossAxisAlignment():
return crossAxisAlignment(_that);case WidgetArgWidget():
return widget(_that);case WidgetArgWidgetList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetArgString value)?  string,TResult? Function( WidgetArgDouble value)?  double,TResult? Function( WidgetArgDoubleNullable value)?  doubleNullable,TResult? Function( WidgetArgColorNullable value)?  colorNullable,TResult? Function( WidgetArgCrossAxisAlignment value)?  crossAxisAlignment,TResult? Function( WidgetArgWidget value)?  widget,TResult? Function( WidgetArgWidgetList value)?  widgetList,}){
final _that = this;
switch (_that) {
case WidgetArgString() when string != null:
return string(_that);case WidgetArgDouble() when double != null:
return double(_that);case WidgetArgDoubleNullable() when doubleNullable != null:
return doubleNullable(_that);case WidgetArgColorNullable() when colorNullable != null:
return colorNullable(_that);case WidgetArgCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case WidgetArgWidget() when widget != null:
return widget(_that);case WidgetArgWidgetList() when widgetList != null:
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
case WidgetArgString() when string != null:
return string(_that.name,_that.defaultValue);case WidgetArgDouble() when double != null:
return double(_that.name,_that.defaultValue);case WidgetArgDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgColorNullable() when colorNullable != null:
return colorNullable(_that.name,_that.defaultValue);case WidgetArgCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgWidget() when widget != null:
return widget(_that.name,_that.defaultValue);case WidgetArgWidgetList() when widgetList != null:
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
case WidgetArgString():
return string(_that.name,_that.defaultValue);case WidgetArgDouble():
return double(_that.name,_that.defaultValue);case WidgetArgDoubleNullable():
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgColorNullable():
return colorNullable(_that.name,_that.defaultValue);case WidgetArgCrossAxisAlignment():
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgWidget():
return widget(_that.name,_that.defaultValue);case WidgetArgWidgetList():
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
case WidgetArgString() when string != null:
return string(_that.name,_that.defaultValue);case WidgetArgDouble() when double != null:
return double(_that.name,_that.defaultValue);case WidgetArgDoubleNullable() when doubleNullable != null:
return doubleNullable(_that.name,_that.defaultValue);case WidgetArgColorNullable() when colorNullable != null:
return colorNullable(_that.name,_that.defaultValue);case WidgetArgCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.name,_that.defaultValue);case WidgetArgWidget() when widget != null:
return widget(_that.name,_that.defaultValue);case WidgetArgWidgetList() when widgetList != null:
return widgetList(_that.name,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetArgString extends WidgetArg {
  const WidgetArgString({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'string',super._();
  factory WidgetArgString.fromJson(Map<String, dynamic> json) => _$WidgetArgStringFromJson(json);

@override final  String name;
@override final  String defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgStringCopyWith<WidgetArgString> get copyWith => _$WidgetArgStringCopyWithImpl<WidgetArgString>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgStringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgString&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.string(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgStringCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgStringCopyWith(WidgetArgString value, $Res Function(WidgetArgString) _then) = _$WidgetArgStringCopyWithImpl;
@override @useResult
$Res call({
 String name, String defaultValue
});




}
/// @nodoc
class _$WidgetArgStringCopyWithImpl<$Res>
    implements $WidgetArgStringCopyWith<$Res> {
  _$WidgetArgStringCopyWithImpl(this._self, this._then);

  final WidgetArgString _self;
  final $Res Function(WidgetArgString) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgString(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDouble extends WidgetArg {
  const WidgetArgDouble({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'double',super._();
  factory WidgetArgDouble.fromJson(Map<String, dynamic> json) => _$WidgetArgDoubleFromJson(json);

@override final  String name;
@override final  double defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDoubleCopyWith<WidgetArgDouble> get copyWith => _$WidgetArgDoubleCopyWithImpl<WidgetArgDouble>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDoubleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDouble&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.double(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDoubleCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgDoubleCopyWith(WidgetArgDouble value, $Res Function(WidgetArgDouble) _then) = _$WidgetArgDoubleCopyWithImpl;
@override @useResult
$Res call({
 String name, double defaultValue
});




}
/// @nodoc
class _$WidgetArgDoubleCopyWithImpl<$Res>
    implements $WidgetArgDoubleCopyWith<$Res> {
  _$WidgetArgDoubleCopyWithImpl(this._self, this._then);

  final WidgetArgDouble _self;
  final $Res Function(WidgetArgDouble) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgDouble(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgDoubleNullable extends WidgetArg {
  const WidgetArgDoubleNullable({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'doubleNullable',super._();
  factory WidgetArgDoubleNullable.fromJson(Map<String, dynamic> json) => _$WidgetArgDoubleNullableFromJson(json);

@override final  String name;
@override final  double? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgDoubleNullableCopyWith<WidgetArgDoubleNullable> get copyWith => _$WidgetArgDoubleNullableCopyWithImpl<WidgetArgDoubleNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgDoubleNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgDoubleNullable&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.doubleNullable(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgDoubleNullableCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgDoubleNullableCopyWith(WidgetArgDoubleNullable value, $Res Function(WidgetArgDoubleNullable) _then) = _$WidgetArgDoubleNullableCopyWithImpl;
@override @useResult
$Res call({
 String name, double? defaultValue
});




}
/// @nodoc
class _$WidgetArgDoubleNullableCopyWithImpl<$Res>
    implements $WidgetArgDoubleNullableCopyWith<$Res> {
  _$WidgetArgDoubleNullableCopyWithImpl(this._self, this._then);

  final WidgetArgDoubleNullable _self;
  final $Res Function(WidgetArgDoubleNullable) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgDoubleNullable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgColorNullable extends WidgetArg {
  const WidgetArgColorNullable({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'colorNullable',super._();
  factory WidgetArgColorNullable.fromJson(Map<String, dynamic> json) => _$WidgetArgColorNullableFromJson(json);

@override final  String name;
@override final  ColorWrapper? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgColorNullableCopyWith<WidgetArgColorNullable> get copyWith => _$WidgetArgColorNullableCopyWithImpl<WidgetArgColorNullable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgColorNullableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgColorNullable&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.colorNullable(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgColorNullableCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgColorNullableCopyWith(WidgetArgColorNullable value, $Res Function(WidgetArgColorNullable) _then) = _$WidgetArgColorNullableCopyWithImpl;
@override @useResult
$Res call({
 String name, ColorWrapper? defaultValue
});


$ColorWrapperCopyWith<$Res>? get defaultValue;

}
/// @nodoc
class _$WidgetArgColorNullableCopyWithImpl<$Res>
    implements $WidgetArgColorNullableCopyWith<$Res> {
  _$WidgetArgColorNullableCopyWithImpl(this._self, this._then);

  final WidgetArgColorNullable _self;
  final $Res Function(WidgetArgColorNullable) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgColorNullable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,
  ));
}

/// Create a copy of WidgetArg
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

class WidgetArgCrossAxisAlignment extends WidgetArg {
  const WidgetArgCrossAxisAlignment({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'crossAxisAlignment',super._();
  factory WidgetArgCrossAxisAlignment.fromJson(Map<String, dynamic> json) => _$WidgetArgCrossAxisAlignmentFromJson(json);

@override final  String name;
@override final  CrossAxisAlignment defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgCrossAxisAlignmentCopyWith<WidgetArgCrossAxisAlignment> get copyWith => _$WidgetArgCrossAxisAlignmentCopyWithImpl<WidgetArgCrossAxisAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgCrossAxisAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgCrossAxisAlignment&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.crossAxisAlignment(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgCrossAxisAlignmentCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgCrossAxisAlignmentCopyWith(WidgetArgCrossAxisAlignment value, $Res Function(WidgetArgCrossAxisAlignment) _then) = _$WidgetArgCrossAxisAlignmentCopyWithImpl;
@override @useResult
$Res call({
 String name, CrossAxisAlignment defaultValue
});




}
/// @nodoc
class _$WidgetArgCrossAxisAlignmentCopyWithImpl<$Res>
    implements $WidgetArgCrossAxisAlignmentCopyWith<$Res> {
  _$WidgetArgCrossAxisAlignmentCopyWithImpl(this._self, this._then);

  final WidgetArgCrossAxisAlignment _self;
  final $Res Function(WidgetArgCrossAxisAlignment) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgCrossAxisAlignment(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetArgWidget extends WidgetArg implements CanHaveChildArg {
  const WidgetArgWidget({required this.name, required this.defaultValue, final  String? $type}): $type = $type ?? 'widget',super._();
  factory WidgetArgWidget.fromJson(Map<String, dynamic> json) => _$WidgetArgWidgetFromJson(json);

@override final  String name;
@override final  WidgetEntity? defaultValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgWidgetCopyWith<WidgetArgWidget> get copyWith => _$WidgetArgWidgetCopyWithImpl<WidgetArgWidget>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgWidgetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgWidget&&(identical(other.name, name) || other.name == name)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,defaultValue);

@override
String toString() {
  return 'WidgetArg.widget(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgWidgetCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgWidgetCopyWith(WidgetArgWidget value, $Res Function(WidgetArgWidget) _then) = _$WidgetArgWidgetCopyWithImpl;
@override @useResult
$Res call({
 String name, WidgetEntity? defaultValue
});


$WidgetEntityCopyWith<$Res>? get defaultValue;

}
/// @nodoc
class _$WidgetArgWidgetCopyWithImpl<$Res>
    implements $WidgetArgWidgetCopyWith<$Res> {
  _$WidgetArgWidgetCopyWithImpl(this._self, this._then);

  final WidgetArgWidget _self;
  final $Res Function(WidgetArgWidget) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = freezed,}) {
  return _then(WidgetArgWidget(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as WidgetEntity?,
  ));
}

/// Create a copy of WidgetArg
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

class WidgetArgWidgetList extends WidgetArg implements CanHaveChildArg {
  const WidgetArgWidgetList({required this.name, required final  List<WidgetEntity> defaultValue, final  String? $type}): _defaultValue = defaultValue,$type = $type ?? 'widgetList',super._();
  factory WidgetArgWidgetList.fromJson(Map<String, dynamic> json) => _$WidgetArgWidgetListFromJson(json);

@override final  String name;
 final  List<WidgetEntity> _defaultValue;
@override List<WidgetEntity> get defaultValue {
  if (_defaultValue is EqualUnmodifiableListView) return _defaultValue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultValue);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetArgWidgetListCopyWith<WidgetArgWidgetList> get copyWith => _$WidgetArgWidgetListCopyWithImpl<WidgetArgWidgetList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetArgWidgetListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetArgWidgetList&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._defaultValue, _defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_defaultValue));

@override
String toString() {
  return 'WidgetArg.widgetList(name: $name, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $WidgetArgWidgetListCopyWith<$Res> implements $WidgetArgCopyWith<$Res> {
  factory $WidgetArgWidgetListCopyWith(WidgetArgWidgetList value, $Res Function(WidgetArgWidgetList) _then) = _$WidgetArgWidgetListCopyWithImpl;
@override @useResult
$Res call({
 String name, List<WidgetEntity> defaultValue
});




}
/// @nodoc
class _$WidgetArgWidgetListCopyWithImpl<$Res>
    implements $WidgetArgWidgetListCopyWith<$Res> {
  _$WidgetArgWidgetListCopyWithImpl(this._self, this._then);

  final WidgetArgWidgetList _self;
  final $Res Function(WidgetArgWidgetList) _then;

/// Create a copy of WidgetArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? defaultValue = null,}) {
  return _then(WidgetArgWidgetList(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,defaultValue: null == defaultValue ? _self._defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

// dart format on
