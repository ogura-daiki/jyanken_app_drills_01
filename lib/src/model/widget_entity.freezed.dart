// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WidgetEntity _$WidgetEntityFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'container':
          return WidgetEntityContainer.fromJson(
            json
          );
                case 'text':
          return WidgetEntityText.fromJson(
            json
          );
                case 'column':
          return WidgetEntityColumn.fromJson(
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

 Object get args;

  /// Serializes this WidgetEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntity&&const DeepCollectionEquality().equals(other.args, args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'WidgetEntity(args: $args)';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetEntityContainer value)?  container,TResult Function( WidgetEntityText value)?  text,TResult Function( WidgetEntityColumn value)?  column,TResult Function( WidgetEntityCenter value)?  center,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetEntityContainer() when container != null:
return container(_that);case WidgetEntityText() when text != null:
return text(_that);case WidgetEntityColumn() when column != null:
return column(_that);case WidgetEntityCenter() when center != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetEntityContainer value)  container,required TResult Function( WidgetEntityText value)  text,required TResult Function( WidgetEntityColumn value)  column,required TResult Function( WidgetEntityCenter value)  center,}){
final _that = this;
switch (_that) {
case WidgetEntityContainer():
return container(_that);case WidgetEntityText():
return text(_that);case WidgetEntityColumn():
return column(_that);case WidgetEntityCenter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetEntityContainer value)?  container,TResult? Function( WidgetEntityText value)?  text,TResult? Function( WidgetEntityColumn value)?  column,TResult? Function( WidgetEntityCenter value)?  center,}){
final _that = this;
switch (_that) {
case WidgetEntityContainer() when container != null:
return container(_that);case WidgetEntityText() when text != null:
return text(_that);case WidgetEntityColumn() when column != null:
return column(_that);case WidgetEntityCenter() when center != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( FixedContainerArgs args)?  container,TResult Function( FixedTextArgs args)?  text,TResult Function( FixedColumnArgs args)?  column,TResult Function( FixedCenterArgs args)?  center,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WidgetEntityContainer() when container != null:
return container(_that.args);case WidgetEntityText() when text != null:
return text(_that.args);case WidgetEntityColumn() when column != null:
return column(_that.args);case WidgetEntityCenter() when center != null:
return center(_that.args);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( FixedContainerArgs args)  container,required TResult Function( FixedTextArgs args)  text,required TResult Function( FixedColumnArgs args)  column,required TResult Function( FixedCenterArgs args)  center,}) {final _that = this;
switch (_that) {
case WidgetEntityContainer():
return container(_that.args);case WidgetEntityText():
return text(_that.args);case WidgetEntityColumn():
return column(_that.args);case WidgetEntityCenter():
return center(_that.args);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( FixedContainerArgs args)?  container,TResult? Function( FixedTextArgs args)?  text,TResult? Function( FixedColumnArgs args)?  column,TResult? Function( FixedCenterArgs args)?  center,}) {final _that = this;
switch (_that) {
case WidgetEntityContainer() when container != null:
return container(_that.args);case WidgetEntityText() when text != null:
return text(_that.args);case WidgetEntityColumn() when column != null:
return column(_that.args);case WidgetEntityCenter() when center != null:
return center(_that.args);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetEntityContainer extends WidgetEntity {
  const WidgetEntityContainer({required this.args, final  String? $type}): $type = $type ?? 'container',super._();
  factory WidgetEntityContainer.fromJson(Map<String, dynamic> json) => _$WidgetEntityContainerFromJson(json);

@override final  FixedContainerArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityContainerCopyWith<WidgetEntityContainer> get copyWith => _$WidgetEntityContainerCopyWithImpl<WidgetEntityContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityContainer&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args);

@override
String toString() {
  return 'WidgetEntity.container(args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityContainerCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityContainerCopyWith(WidgetEntityContainer value, $Res Function(WidgetEntityContainer) _then) = _$WidgetEntityContainerCopyWithImpl;
@useResult
$Res call({
 FixedContainerArgs args
});


$FixedContainerArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityContainerCopyWithImpl<$Res>
    implements $WidgetEntityContainerCopyWith<$Res> {
  _$WidgetEntityContainerCopyWithImpl(this._self, this._then);

  final WidgetEntityContainer _self;
  final $Res Function(WidgetEntityContainer) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? args = null,}) {
  return _then(WidgetEntityContainer(
args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedContainerArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FixedContainerArgsCopyWith<$Res> get args {
  
  return $FixedContainerArgsCopyWith<$Res>(_self.args, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetEntityText extends WidgetEntity {
  const WidgetEntityText({required this.args, final  String? $type}): $type = $type ?? 'text',super._();
  factory WidgetEntityText.fromJson(Map<String, dynamic> json) => _$WidgetEntityTextFromJson(json);

@override final  FixedTextArgs args;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityText&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args);

@override
String toString() {
  return 'WidgetEntity.text(args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityTextCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityTextCopyWith(WidgetEntityText value, $Res Function(WidgetEntityText) _then) = _$WidgetEntityTextCopyWithImpl;
@useResult
$Res call({
 FixedTextArgs args
});


$FixedTextArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityTextCopyWithImpl<$Res>
    implements $WidgetEntityTextCopyWith<$Res> {
  _$WidgetEntityTextCopyWithImpl(this._self, this._then);

  final WidgetEntityText _self;
  final $Res Function(WidgetEntityText) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? args = null,}) {
  return _then(WidgetEntityText(
args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedTextArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FixedTextArgsCopyWith<$Res> get args {
  
  return $FixedTextArgsCopyWith<$Res>(_self.args, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetEntityColumn extends WidgetEntity {
  const WidgetEntityColumn({required this.args, final  String? $type}): $type = $type ?? 'column',super._();
  factory WidgetEntityColumn.fromJson(Map<String, dynamic> json) => _$WidgetEntityColumnFromJson(json);

@override final  FixedColumnArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityColumnCopyWith<WidgetEntityColumn> get copyWith => _$WidgetEntityColumnCopyWithImpl<WidgetEntityColumn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityColumnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityColumn&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args);

@override
String toString() {
  return 'WidgetEntity.column(args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityColumnCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityColumnCopyWith(WidgetEntityColumn value, $Res Function(WidgetEntityColumn) _then) = _$WidgetEntityColumnCopyWithImpl;
@useResult
$Res call({
 FixedColumnArgs args
});


$FixedColumnArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityColumnCopyWithImpl<$Res>
    implements $WidgetEntityColumnCopyWith<$Res> {
  _$WidgetEntityColumnCopyWithImpl(this._self, this._then);

  final WidgetEntityColumn _self;
  final $Res Function(WidgetEntityColumn) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? args = null,}) {
  return _then(WidgetEntityColumn(
args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedColumnArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FixedColumnArgsCopyWith<$Res> get args {
  
  return $FixedColumnArgsCopyWith<$Res>(_self.args, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetEntityCenter extends WidgetEntity {
  const WidgetEntityCenter({required this.args, final  String? $type}): $type = $type ?? 'center',super._();
  factory WidgetEntityCenter.fromJson(Map<String, dynamic> json) => _$WidgetEntityCenterFromJson(json);

@override final  FixedCenterArgs args;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityCenter&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,args);

@override
String toString() {
  return 'WidgetEntity.center(args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityCenterCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityCenterCopyWith(WidgetEntityCenter value, $Res Function(WidgetEntityCenter) _then) = _$WidgetEntityCenterCopyWithImpl;
@useResult
$Res call({
 FixedCenterArgs args
});


$FixedCenterArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityCenterCopyWithImpl<$Res>
    implements $WidgetEntityCenterCopyWith<$Res> {
  _$WidgetEntityCenterCopyWithImpl(this._self, this._then);

  final WidgetEntityCenter _self;
  final $Res Function(WidgetEntityCenter) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? args = null,}) {
  return _then(WidgetEntityCenter(
args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedCenterArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FixedCenterArgsCopyWith<$Res> get args {
  
  return $FixedCenterArgsCopyWith<$Res>(_self.args, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

// dart format on
