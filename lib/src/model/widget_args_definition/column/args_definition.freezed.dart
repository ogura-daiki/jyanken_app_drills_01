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
ColumnArgsDefinition _$ColumnArgsDefinitionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'crossAxisAlignment':
          return ColumnArgsDefinitionCrossAxisAlignment.fromJson(
            json
          );
                case 'children':
          return ColumnArgsDefinitionChildren.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ColumnArgsDefinition',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ColumnArgsDefinition {

 Object get value;

  /// Serializes this ColumnArgsDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnArgsDefinition&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ColumnArgsDefinition(value: $value)';
}


}

/// @nodoc
class $ColumnArgsDefinitionCopyWith<$Res>  {
$ColumnArgsDefinitionCopyWith(ColumnArgsDefinition _, $Res Function(ColumnArgsDefinition) __);
}


/// Adds pattern-matching-related methods to [ColumnArgsDefinition].
extension ColumnArgsDefinitionPatterns on ColumnArgsDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ColumnArgsDefinitionCrossAxisAlignment value)?  crossAxisAlignment,TResult Function( ColumnArgsDefinitionChildren value)?  children,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case ColumnArgsDefinitionChildren() when children != null:
return children(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ColumnArgsDefinitionCrossAxisAlignment value)  crossAxisAlignment,required TResult Function( ColumnArgsDefinitionChildren value)  children,}){
final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment():
return crossAxisAlignment(_that);case ColumnArgsDefinitionChildren():
return children(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ColumnArgsDefinitionCrossAxisAlignment value)?  crossAxisAlignment,TResult? Function( ColumnArgsDefinitionChildren value)?  children,}){
final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that);case ColumnArgsDefinitionChildren() when children != null:
return children(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CrossAxisAlignment value)?  crossAxisAlignment,TResult Function( List<WidgetEntity> value)?  children,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.value);case ColumnArgsDefinitionChildren() when children != null:
return children(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CrossAxisAlignment value)  crossAxisAlignment,required TResult Function( List<WidgetEntity> value)  children,}) {final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment():
return crossAxisAlignment(_that.value);case ColumnArgsDefinitionChildren():
return children(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CrossAxisAlignment value)?  crossAxisAlignment,TResult? Function( List<WidgetEntity> value)?  children,}) {final _that = this;
switch (_that) {
case ColumnArgsDefinitionCrossAxisAlignment() when crossAxisAlignment != null:
return crossAxisAlignment(_that.value);case ColumnArgsDefinitionChildren() when children != null:
return children(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ColumnArgsDefinitionCrossAxisAlignment extends ColumnArgsDefinition {
  const ColumnArgsDefinitionCrossAxisAlignment({required this.value,  String? $type}): $type = $type ?? 'crossAxisAlignment',super._();
  factory ColumnArgsDefinitionCrossAxisAlignment.fromJson(Map<String, dynamic> json) => _$ColumnArgsDefinitionCrossAxisAlignmentFromJson(json);

@override final  CrossAxisAlignment value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ColumnArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnArgsDefinitionCrossAxisAlignmentCopyWith<ColumnArgsDefinitionCrossAxisAlignment> get copyWith => _$ColumnArgsDefinitionCrossAxisAlignmentCopyWithImpl<ColumnArgsDefinitionCrossAxisAlignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColumnArgsDefinitionCrossAxisAlignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnArgsDefinitionCrossAxisAlignment&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ColumnArgsDefinition.crossAxisAlignment(value: $value)';
}


}

/// @nodoc
abstract mixin class $ColumnArgsDefinitionCrossAxisAlignmentCopyWith<$Res> implements $ColumnArgsDefinitionCopyWith<$Res> {
  factory $ColumnArgsDefinitionCrossAxisAlignmentCopyWith(ColumnArgsDefinitionCrossAxisAlignment value, $Res Function(ColumnArgsDefinitionCrossAxisAlignment) _then) = _$ColumnArgsDefinitionCrossAxisAlignmentCopyWithImpl;
@useResult
$Res call({
 CrossAxisAlignment value
});




}
/// @nodoc
class _$ColumnArgsDefinitionCrossAxisAlignmentCopyWithImpl<$Res>
    implements $ColumnArgsDefinitionCrossAxisAlignmentCopyWith<$Res> {
  _$ColumnArgsDefinitionCrossAxisAlignmentCopyWithImpl(this._self, this._then);

  final ColumnArgsDefinitionCrossAxisAlignment _self;
  final $Res Function(ColumnArgsDefinitionCrossAxisAlignment) _then;

/// Create a copy of ColumnArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ColumnArgsDefinitionCrossAxisAlignment(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ColumnArgsDefinitionChildren extends ColumnArgsDefinition {
  const ColumnArgsDefinitionChildren({required  List<WidgetEntity> value,  String? $type}): _value = value,$type = $type ?? 'children',super._();
  factory ColumnArgsDefinitionChildren.fromJson(Map<String, dynamic> json) => _$ColumnArgsDefinitionChildrenFromJson(json);

 final  List<WidgetEntity> _value;
@override List<WidgetEntity> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ColumnArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnArgsDefinitionChildrenCopyWith<ColumnArgsDefinitionChildren> get copyWith => _$ColumnArgsDefinitionChildrenCopyWithImpl<ColumnArgsDefinitionChildren>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColumnArgsDefinitionChildrenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnArgsDefinitionChildren&&const DeepCollectionEquality().equals(other._value, _value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'ColumnArgsDefinition.children(value: $value)';
}


}

/// @nodoc
abstract mixin class $ColumnArgsDefinitionChildrenCopyWith<$Res> implements $ColumnArgsDefinitionCopyWith<$Res> {
  factory $ColumnArgsDefinitionChildrenCopyWith(ColumnArgsDefinitionChildren value, $Res Function(ColumnArgsDefinitionChildren) _then) = _$ColumnArgsDefinitionChildrenCopyWithImpl;
@useResult
$Res call({
 List<WidgetEntity> value
});




}
/// @nodoc
class _$ColumnArgsDefinitionChildrenCopyWithImpl<$Res>
    implements $ColumnArgsDefinitionChildrenCopyWith<$Res> {
  _$ColumnArgsDefinitionChildrenCopyWithImpl(this._self, this._then);

  final ColumnArgsDefinitionChildren _self;
  final $Res Function(ColumnArgsDefinitionChildren) _then;

/// Create a copy of ColumnArgsDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ColumnArgsDefinitionChildren(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<WidgetEntity>,
  ));
}


}

// dart format on
