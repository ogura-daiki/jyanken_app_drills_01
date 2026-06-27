// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'args_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
TextArgsDefinition _$TextArgsDefinitionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'text':
          return TextArgsDefinitionText.fromJson(
            json
          );
                case 'fontSize':
          return TextArgsDefinitionFontSize.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'TextArgsDefinition',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$TextArgsDefinition {

 Object get value;

  /// Serializes this TextArgsDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextArgsDefinition&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'TextArgsDefinition(value: $value)';
}


}

/// @nodoc
class $TextArgsDefinitionCopyWith<$Res>  {
$TextArgsDefinitionCopyWith(TextArgsDefinition _, $Res Function(TextArgsDefinition) __);
}


/// Adds pattern-matching-related methods to [TextArgsDefinition].
extension TextArgsDefinitionPatterns on TextArgsDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextArgsDefinitionText value)?  text,TResult Function( TextArgsDefinitionFontSize value)?  fontSize,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextArgsDefinitionText() when text != null:
return text(_that);case TextArgsDefinitionFontSize() when fontSize != null:
return fontSize(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextArgsDefinitionText value)  text,required TResult Function( TextArgsDefinitionFontSize value)  fontSize,}){
final _that = this;
switch (_that) {
case TextArgsDefinitionText():
return text(_that);case TextArgsDefinitionFontSize():
return fontSize(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextArgsDefinitionText value)?  text,TResult? Function( TextArgsDefinitionFontSize value)?  fontSize,}){
final _that = this;
switch (_that) {
case TextArgsDefinitionText() when text != null:
return text(_that);case TextArgsDefinitionFontSize() when fontSize != null:
return fontSize(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  text,TResult Function( double value)?  fontSize,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextArgsDefinitionText() when text != null:
return text(_that.value);case TextArgsDefinitionFontSize() when fontSize != null:
return fontSize(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  text,required TResult Function( double value)  fontSize,}) {final _that = this;
switch (_that) {
case TextArgsDefinitionText():
return text(_that.value);case TextArgsDefinitionFontSize():
return fontSize(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  text,TResult? Function( double value)?  fontSize,}) {final _that = this;
switch (_that) {
case TextArgsDefinitionText() when text != null:
return text(_that.value);case TextArgsDefinitionFontSize() when fontSize != null:
return fontSize(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class TextArgsDefinitionText extends TextArgsDefinition {
  const TextArgsDefinitionText({required this.value,  String? $type}): $type = $type ?? 'text',super._();
  factory TextArgsDefinitionText.fromJson(Map<String, dynamic> json) => _$TextArgsDefinitionTextFromJson(json);

@override final  String value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of TextArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextArgsDefinitionTextCopyWith<TextArgsDefinitionText> get copyWith => _$TextArgsDefinitionTextCopyWithImpl<TextArgsDefinitionText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextArgsDefinitionTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextArgsDefinitionText&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'TextArgsDefinition.text(value: $value)';
}


}

/// @nodoc
abstract mixin class $TextArgsDefinitionTextCopyWith<$Res> implements $TextArgsDefinitionCopyWith<$Res> {
  factory $TextArgsDefinitionTextCopyWith(TextArgsDefinitionText value, $Res Function(TextArgsDefinitionText) _then) = _$TextArgsDefinitionTextCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$TextArgsDefinitionTextCopyWithImpl<$Res>
    implements $TextArgsDefinitionTextCopyWith<$Res> {
  _$TextArgsDefinitionTextCopyWithImpl(this._self, this._then);

  final TextArgsDefinitionText _self;
  final $Res Function(TextArgsDefinitionText) _then;

/// Create a copy of TextArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(TextArgsDefinitionText(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class TextArgsDefinitionFontSize extends TextArgsDefinition {
  const TextArgsDefinitionFontSize({required this.value,  String? $type}): $type = $type ?? 'fontSize',super._();
  factory TextArgsDefinitionFontSize.fromJson(Map<String, dynamic> json) => _$TextArgsDefinitionFontSizeFromJson(json);

@override final  double value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of TextArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextArgsDefinitionFontSizeCopyWith<TextArgsDefinitionFontSize> get copyWith => _$TextArgsDefinitionFontSizeCopyWithImpl<TextArgsDefinitionFontSize>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextArgsDefinitionFontSizeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextArgsDefinitionFontSize&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'TextArgsDefinition.fontSize(value: $value)';
}


}

/// @nodoc
abstract mixin class $TextArgsDefinitionFontSizeCopyWith<$Res> implements $TextArgsDefinitionCopyWith<$Res> {
  factory $TextArgsDefinitionFontSizeCopyWith(TextArgsDefinitionFontSize value, $Res Function(TextArgsDefinitionFontSize) _then) = _$TextArgsDefinitionFontSizeCopyWithImpl;
@useResult
$Res call({
 double value
});




}
/// @nodoc
class _$TextArgsDefinitionFontSizeCopyWithImpl<$Res>
    implements $TextArgsDefinitionFontSizeCopyWith<$Res> {
  _$TextArgsDefinitionFontSizeCopyWithImpl(this._self, this._then);

  final TextArgsDefinitionFontSize _self;
  final $Res Function(TextArgsDefinitionFontSize) _then;

/// Create a copy of TextArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(TextArgsDefinitionFontSize(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
