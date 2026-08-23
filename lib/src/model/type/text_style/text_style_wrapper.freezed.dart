// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_style_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextStyleWrapper {

 BuiltInTextStyle? get baseStyle; ColorWrapper? get color; ColorWrapper? get backgroundColor; double? get fontSize; FontWeightDefinition? get fontWeight; FontStyle? get fontStyle; double? get letterSpacing; double? get wordSpacing; double? get height; Set<TextDecorationDefinition> get decoration; ColorWrapper? get decorationColor; TextDecorationStyle? get decorationStyle; double? get decorationThickness; TextOverflow? get overflow;
/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextStyleWrapperCopyWith<TextStyleWrapper> get copyWith => _$TextStyleWrapperCopyWithImpl<TextStyleWrapper>(this as TextStyleWrapper, _$identity);

  /// Serializes this TextStyleWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextStyleWrapper&&(identical(other.baseStyle, baseStyle) || other.baseStyle == baseStyle)&&(identical(other.color, color) || other.color == color)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontWeight, fontWeight) || other.fontWeight == fontWeight)&&(identical(other.fontStyle, fontStyle) || other.fontStyle == fontStyle)&&(identical(other.letterSpacing, letterSpacing) || other.letterSpacing == letterSpacing)&&(identical(other.wordSpacing, wordSpacing) || other.wordSpacing == wordSpacing)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.decoration, decoration)&&(identical(other.decorationColor, decorationColor) || other.decorationColor == decorationColor)&&(identical(other.decorationStyle, decorationStyle) || other.decorationStyle == decorationStyle)&&(identical(other.decorationThickness, decorationThickness) || other.decorationThickness == decorationThickness)&&(identical(other.overflow, overflow) || other.overflow == overflow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStyle,color,backgroundColor,fontSize,fontWeight,fontStyle,letterSpacing,wordSpacing,height,const DeepCollectionEquality().hash(decoration),decorationColor,decorationStyle,decorationThickness,overflow);

@override
String toString() {
  return 'TextStyleWrapper(baseStyle: $baseStyle, color: $color, backgroundColor: $backgroundColor, fontSize: $fontSize, fontWeight: $fontWeight, fontStyle: $fontStyle, letterSpacing: $letterSpacing, wordSpacing: $wordSpacing, height: $height, decoration: $decoration, decorationColor: $decorationColor, decorationStyle: $decorationStyle, decorationThickness: $decorationThickness, overflow: $overflow)';
}


}

/// @nodoc
abstract mixin class $TextStyleWrapperCopyWith<$Res>  {
  factory $TextStyleWrapperCopyWith(TextStyleWrapper value, $Res Function(TextStyleWrapper) _then) = _$TextStyleWrapperCopyWithImpl;
@useResult
$Res call({
 BuiltInTextStyle? baseStyle, ColorWrapper? color, ColorWrapper? backgroundColor, double? fontSize, FontWeightDefinition? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? wordSpacing, double? height, Set<TextDecorationDefinition> decoration, ColorWrapper? decorationColor, TextDecorationStyle? decorationStyle, double? decorationThickness, TextOverflow? overflow
});


$ColorWrapperCopyWith<$Res>? get color;$ColorWrapperCopyWith<$Res>? get backgroundColor;$ColorWrapperCopyWith<$Res>? get decorationColor;

}
/// @nodoc
class _$TextStyleWrapperCopyWithImpl<$Res>
    implements $TextStyleWrapperCopyWith<$Res> {
  _$TextStyleWrapperCopyWithImpl(this._self, this._then);

  final TextStyleWrapper _self;
  final $Res Function(TextStyleWrapper) _then;

/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStyle = freezed,Object? color = freezed,Object? backgroundColor = freezed,Object? fontSize = freezed,Object? fontWeight = freezed,Object? fontStyle = freezed,Object? letterSpacing = freezed,Object? wordSpacing = freezed,Object? height = freezed,Object? decoration = null,Object? decorationColor = freezed,Object? decorationStyle = freezed,Object? decorationThickness = freezed,Object? overflow = freezed,}) {
  return _then(_self.copyWith(
baseStyle: freezed == baseStyle ? _self.baseStyle : baseStyle // ignore: cast_nullable_to_non_nullable
as BuiltInTextStyle?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,fontWeight: freezed == fontWeight ? _self.fontWeight : fontWeight // ignore: cast_nullable_to_non_nullable
as FontWeightDefinition?,fontStyle: freezed == fontStyle ? _self.fontStyle : fontStyle // ignore: cast_nullable_to_non_nullable
as FontStyle?,letterSpacing: freezed == letterSpacing ? _self.letterSpacing : letterSpacing // ignore: cast_nullable_to_non_nullable
as double?,wordSpacing: freezed == wordSpacing ? _self.wordSpacing : wordSpacing // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,decoration: null == decoration ? _self.decoration : decoration // ignore: cast_nullable_to_non_nullable
as Set<TextDecorationDefinition>,decorationColor: freezed == decorationColor ? _self.decorationColor : decorationColor // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,decorationStyle: freezed == decorationStyle ? _self.decorationStyle : decorationStyle // ignore: cast_nullable_to_non_nullable
as TextDecorationStyle?,decorationThickness: freezed == decorationThickness ? _self.decorationThickness : decorationThickness // ignore: cast_nullable_to_non_nullable
as double?,overflow: freezed == overflow ? _self.overflow : overflow // ignore: cast_nullable_to_non_nullable
as TextOverflow?,
  ));
}
/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get backgroundColor {
    if (_self.backgroundColor == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.backgroundColor!, (value) {
    return _then(_self.copyWith(backgroundColor: value));
  });
}/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get decorationColor {
    if (_self.decorationColor == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.decorationColor!, (value) {
    return _then(_self.copyWith(decorationColor: value));
  });
}
}


/// Adds pattern-matching-related methods to [TextStyleWrapper].
extension TextStyleWrapperPatterns on TextStyleWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextStyleWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextStyleWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextStyleWrapper value)  $default,){
final _that = this;
switch (_that) {
case _TextStyleWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextStyleWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _TextStyleWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BuiltInTextStyle? baseStyle,  ColorWrapper? color,  ColorWrapper? backgroundColor,  double? fontSize,  FontWeightDefinition? fontWeight,  FontStyle? fontStyle,  double? letterSpacing,  double? wordSpacing,  double? height,  Set<TextDecorationDefinition> decoration,  ColorWrapper? decorationColor,  TextDecorationStyle? decorationStyle,  double? decorationThickness,  TextOverflow? overflow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextStyleWrapper() when $default != null:
return $default(_that.baseStyle,_that.color,_that.backgroundColor,_that.fontSize,_that.fontWeight,_that.fontStyle,_that.letterSpacing,_that.wordSpacing,_that.height,_that.decoration,_that.decorationColor,_that.decorationStyle,_that.decorationThickness,_that.overflow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BuiltInTextStyle? baseStyle,  ColorWrapper? color,  ColorWrapper? backgroundColor,  double? fontSize,  FontWeightDefinition? fontWeight,  FontStyle? fontStyle,  double? letterSpacing,  double? wordSpacing,  double? height,  Set<TextDecorationDefinition> decoration,  ColorWrapper? decorationColor,  TextDecorationStyle? decorationStyle,  double? decorationThickness,  TextOverflow? overflow)  $default,) {final _that = this;
switch (_that) {
case _TextStyleWrapper():
return $default(_that.baseStyle,_that.color,_that.backgroundColor,_that.fontSize,_that.fontWeight,_that.fontStyle,_that.letterSpacing,_that.wordSpacing,_that.height,_that.decoration,_that.decorationColor,_that.decorationStyle,_that.decorationThickness,_that.overflow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BuiltInTextStyle? baseStyle,  ColorWrapper? color,  ColorWrapper? backgroundColor,  double? fontSize,  FontWeightDefinition? fontWeight,  FontStyle? fontStyle,  double? letterSpacing,  double? wordSpacing,  double? height,  Set<TextDecorationDefinition> decoration,  ColorWrapper? decorationColor,  TextDecorationStyle? decorationStyle,  double? decorationThickness,  TextOverflow? overflow)?  $default,) {final _that = this;
switch (_that) {
case _TextStyleWrapper() when $default != null:
return $default(_that.baseStyle,_that.color,_that.backgroundColor,_that.fontSize,_that.fontWeight,_that.fontStyle,_that.letterSpacing,_that.wordSpacing,_that.height,_that.decoration,_that.decorationColor,_that.decorationStyle,_that.decorationThickness,_that.overflow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextStyleWrapper extends TextStyleWrapper {
  const _TextStyleWrapper({this.baseStyle, this.color, this.backgroundColor, this.fontSize, this.fontWeight, this.fontStyle, this.letterSpacing, this.wordSpacing, this.height, final  Set<TextDecorationDefinition> decoration = const {}, this.decorationColor, this.decorationStyle, this.decorationThickness, this.overflow}): _decoration = decoration,super._();
  factory _TextStyleWrapper.fromJson(Map<String, dynamic> json) => _$TextStyleWrapperFromJson(json);

@override final  BuiltInTextStyle? baseStyle;
@override final  ColorWrapper? color;
@override final  ColorWrapper? backgroundColor;
@override final  double? fontSize;
@override final  FontWeightDefinition? fontWeight;
@override final  FontStyle? fontStyle;
@override final  double? letterSpacing;
@override final  double? wordSpacing;
@override final  double? height;
 final  Set<TextDecorationDefinition> _decoration;
@override@JsonKey() Set<TextDecorationDefinition> get decoration {
  if (_decoration is EqualUnmodifiableSetView) return _decoration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_decoration);
}

@override final  ColorWrapper? decorationColor;
@override final  TextDecorationStyle? decorationStyle;
@override final  double? decorationThickness;
@override final  TextOverflow? overflow;

/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextStyleWrapperCopyWith<_TextStyleWrapper> get copyWith => __$TextStyleWrapperCopyWithImpl<_TextStyleWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextStyleWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextStyleWrapper&&(identical(other.baseStyle, baseStyle) || other.baseStyle == baseStyle)&&(identical(other.color, color) || other.color == color)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontWeight, fontWeight) || other.fontWeight == fontWeight)&&(identical(other.fontStyle, fontStyle) || other.fontStyle == fontStyle)&&(identical(other.letterSpacing, letterSpacing) || other.letterSpacing == letterSpacing)&&(identical(other.wordSpacing, wordSpacing) || other.wordSpacing == wordSpacing)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other._decoration, _decoration)&&(identical(other.decorationColor, decorationColor) || other.decorationColor == decorationColor)&&(identical(other.decorationStyle, decorationStyle) || other.decorationStyle == decorationStyle)&&(identical(other.decorationThickness, decorationThickness) || other.decorationThickness == decorationThickness)&&(identical(other.overflow, overflow) || other.overflow == overflow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStyle,color,backgroundColor,fontSize,fontWeight,fontStyle,letterSpacing,wordSpacing,height,const DeepCollectionEquality().hash(_decoration),decorationColor,decorationStyle,decorationThickness,overflow);

@override
String toString() {
  return 'TextStyleWrapper(baseStyle: $baseStyle, color: $color, backgroundColor: $backgroundColor, fontSize: $fontSize, fontWeight: $fontWeight, fontStyle: $fontStyle, letterSpacing: $letterSpacing, wordSpacing: $wordSpacing, height: $height, decoration: $decoration, decorationColor: $decorationColor, decorationStyle: $decorationStyle, decorationThickness: $decorationThickness, overflow: $overflow)';
}


}

/// @nodoc
abstract mixin class _$TextStyleWrapperCopyWith<$Res> implements $TextStyleWrapperCopyWith<$Res> {
  factory _$TextStyleWrapperCopyWith(_TextStyleWrapper value, $Res Function(_TextStyleWrapper) _then) = __$TextStyleWrapperCopyWithImpl;
@override @useResult
$Res call({
 BuiltInTextStyle? baseStyle, ColorWrapper? color, ColorWrapper? backgroundColor, double? fontSize, FontWeightDefinition? fontWeight, FontStyle? fontStyle, double? letterSpacing, double? wordSpacing, double? height, Set<TextDecorationDefinition> decoration, ColorWrapper? decorationColor, TextDecorationStyle? decorationStyle, double? decorationThickness, TextOverflow? overflow
});


@override $ColorWrapperCopyWith<$Res>? get color;@override $ColorWrapperCopyWith<$Res>? get backgroundColor;@override $ColorWrapperCopyWith<$Res>? get decorationColor;

}
/// @nodoc
class __$TextStyleWrapperCopyWithImpl<$Res>
    implements _$TextStyleWrapperCopyWith<$Res> {
  __$TextStyleWrapperCopyWithImpl(this._self, this._then);

  final _TextStyleWrapper _self;
  final $Res Function(_TextStyleWrapper) _then;

/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStyle = freezed,Object? color = freezed,Object? backgroundColor = freezed,Object? fontSize = freezed,Object? fontWeight = freezed,Object? fontStyle = freezed,Object? letterSpacing = freezed,Object? wordSpacing = freezed,Object? height = freezed,Object? decoration = null,Object? decorationColor = freezed,Object? decorationStyle = freezed,Object? decorationThickness = freezed,Object? overflow = freezed,}) {
  return _then(_TextStyleWrapper(
baseStyle: freezed == baseStyle ? _self.baseStyle : baseStyle // ignore: cast_nullable_to_non_nullable
as BuiltInTextStyle?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,fontWeight: freezed == fontWeight ? _self.fontWeight : fontWeight // ignore: cast_nullable_to_non_nullable
as FontWeightDefinition?,fontStyle: freezed == fontStyle ? _self.fontStyle : fontStyle // ignore: cast_nullable_to_non_nullable
as FontStyle?,letterSpacing: freezed == letterSpacing ? _self.letterSpacing : letterSpacing // ignore: cast_nullable_to_non_nullable
as double?,wordSpacing: freezed == wordSpacing ? _self.wordSpacing : wordSpacing // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,decoration: null == decoration ? _self._decoration : decoration // ignore: cast_nullable_to_non_nullable
as Set<TextDecorationDefinition>,decorationColor: freezed == decorationColor ? _self.decorationColor : decorationColor // ignore: cast_nullable_to_non_nullable
as ColorWrapper?,decorationStyle: freezed == decorationStyle ? _self.decorationStyle : decorationStyle // ignore: cast_nullable_to_non_nullable
as TextDecorationStyle?,decorationThickness: freezed == decorationThickness ? _self.decorationThickness : decorationThickness // ignore: cast_nullable_to_non_nullable
as double?,overflow: freezed == overflow ? _self.overflow : overflow // ignore: cast_nullable_to_non_nullable
as TextOverflow?,
  ));
}

/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get color {
    if (_self.color == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.color!, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get backgroundColor {
    if (_self.backgroundColor == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.backgroundColor!, (value) {
    return _then(_self.copyWith(backgroundColor: value));
  });
}/// Create a copy of TextStyleWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorWrapperCopyWith<$Res>? get decorationColor {
    if (_self.decorationColor == null) {
    return null;
  }

  return $ColorWrapperCopyWith<$Res>(_self.decorationColor!, (value) {
    return _then(_self.copyWith(decorationColor: value));
  });
}
}

// dart format on
