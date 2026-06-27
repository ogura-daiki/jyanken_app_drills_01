// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
WidgetEntity _$WidgetEntityFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'text':
          return WidgetEntityText.fromJson(
            json
          );
                case 'center':
          return WidgetEntityCenter.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WidgetEntity',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WidgetEntity {



  /// Serializes this WidgetEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntity);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WidgetEntity()';
}


}

/// @nodoc
class $WidgetEntityCopyWith<$Res>  {
$WidgetEntityCopyWith(WidgetEntity _, $Res Function(WidgetEntity) __);
}


/// Adds pattern-matching-related methods to [WidgetEntity].
extension WidgetEntityPatterns on WidgetEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetEntityText value)?  text,TResult Function( WidgetEntityCenter value)?  center,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetEntityText() when text != null:
return text(_that);case WidgetEntityCenter() when center != null:
return center(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetEntityText value)  text,required TResult Function( WidgetEntityCenter value)  center,}){
final _that = this;
switch (_that) {
case WidgetEntityText():
return text(_that);case WidgetEntityCenter():
return center(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetEntityText value)?  text,TResult? Function( WidgetEntityCenter value)?  center,}){
final _that = this;
switch (_that) {
case WidgetEntityText() when text != null:
return text(_that);case WidgetEntityCenter() when center != null:
return center(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  text,TResult Function( WidgetEntity child)?  center,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WidgetEntityText() when text != null:
return text(_that.text);case WidgetEntityCenter() when center != null:
return center(_that.child);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  text,required TResult Function( WidgetEntity child)  center,}) {final _that = this;
switch (_that) {
case WidgetEntityText():
return text(_that.text);case WidgetEntityCenter():
return center(_that.child);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  text,TResult? Function( WidgetEntity child)?  center,}) {final _that = this;
switch (_that) {
case WidgetEntityText() when text != null:
return text(_that.text);case WidgetEntityCenter() when center != null:
return center(_that.child);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetEntityText extends WidgetEntity {
  const WidgetEntityText({required this.text,  String? $type}): $type = $type ?? 'text',super._();
  factory WidgetEntityText.fromJson(Map<String, dynamic> json) => _$WidgetEntityTextFromJson(json);

 final  String text;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityTextCopyWith<WidgetEntityText> get copyWith => _$WidgetEntityTextCopyWithImpl<WidgetEntityText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityText&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'WidgetEntity.text(text: $text)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityTextCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityTextCopyWith(WidgetEntityText value, $Res Function(WidgetEntityText) _then) = _$WidgetEntityTextCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$WidgetEntityTextCopyWithImpl<$Res>
    implements $WidgetEntityTextCopyWith<$Res> {
  _$WidgetEntityTextCopyWithImpl(this._self, this._then);

  final WidgetEntityText _self;
  final $Res Function(WidgetEntityText) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(WidgetEntityText(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetEntityCenter extends WidgetEntity {
  const WidgetEntityCenter({required this.child,  String? $type}): $type = $type ?? 'center',super._();
  factory WidgetEntityCenter.fromJson(Map<String, dynamic> json) => _$WidgetEntityCenterFromJson(json);

 final  WidgetEntity child;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityCenterCopyWith<WidgetEntityCenter> get copyWith => _$WidgetEntityCenterCopyWithImpl<WidgetEntityCenter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityCenterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityCenter&&(identical(other.child, child) || other.child == child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child);

@override
String toString() {
  return 'WidgetEntity.center(child: $child)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityCenterCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityCenterCopyWith(WidgetEntityCenter value, $Res Function(WidgetEntityCenter) _then) = _$WidgetEntityCenterCopyWithImpl;
@useResult
$Res call({
 WidgetEntity child
});


$WidgetEntityCopyWith<$Res> get child;

}
/// @nodoc
class _$WidgetEntityCenterCopyWithImpl<$Res>
    implements $WidgetEntityCenterCopyWith<$Res> {
  _$WidgetEntityCenterCopyWithImpl(this._self, this._then);

  final WidgetEntityCenter _self;
  final $Res Function(WidgetEntityCenter) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? child = null,}) {
  return _then(WidgetEntityCenter(
child: null == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WidgetEntity,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res> get child {
  
  return $WidgetEntityCopyWith<$Res>(_self.child, (value) {
    return _then(_self.copyWith(child: value));
  });
}
}

// dart format on
