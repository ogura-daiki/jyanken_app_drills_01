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
                  case 'root':
          return WidgetEntityRoot.fromJson(
            json
          );
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

 WidgetEntityId get id; Object get args;
/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<WidgetEntity> get copyWith => _$WidgetEntityCopyWithImpl<WidgetEntity>(this as WidgetEntity, _$identity);

  /// Serializes this WidgetEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.args, args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'WidgetEntity(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityCopyWith<$Res>  {
  factory $WidgetEntityCopyWith(WidgetEntity value, $Res Function(WidgetEntity) _then) = _$WidgetEntityCopyWithImpl;
@useResult
$Res call({
 WidgetEntityId id
});


$WidgetEntityIdCopyWith<$Res> get id;

}
/// @nodoc
class _$WidgetEntityCopyWithImpl<$Res>
    implements $WidgetEntityCopyWith<$Res> {
  _$WidgetEntityCopyWithImpl(this._self, this._then);

  final WidgetEntity _self;
  final $Res Function(WidgetEntity) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,
  ));
}
/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WidgetEntityRoot value)?  root,TResult Function( WidgetEntityContainer value)?  container,TResult Function( WidgetEntityText value)?  text,TResult Function( WidgetEntityColumn value)?  column,TResult Function( WidgetEntityCenter value)?  center,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WidgetEntityRoot() when root != null:
return root(_that);case WidgetEntityContainer() when container != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WidgetEntityRoot value)  root,required TResult Function( WidgetEntityContainer value)  container,required TResult Function( WidgetEntityText value)  text,required TResult Function( WidgetEntityColumn value)  column,required TResult Function( WidgetEntityCenter value)  center,}){
final _that = this;
switch (_that) {
case WidgetEntityRoot():
return root(_that);case WidgetEntityContainer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WidgetEntityRoot value)?  root,TResult? Function( WidgetEntityContainer value)?  container,TResult? Function( WidgetEntityText value)?  text,TResult? Function( WidgetEntityColumn value)?  column,TResult? Function( WidgetEntityCenter value)?  center,}){
final _that = this;
switch (_that) {
case WidgetEntityRoot() when root != null:
return root(_that);case WidgetEntityContainer() when container != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( WidgetEntityId id,  FixedRootArgs args)?  root,TResult Function( WidgetEntityId id,  FixedContainerArgs args)?  container,TResult Function( WidgetEntityId id,  FixedTextArgs args)?  text,TResult Function( WidgetEntityId id,  FixedColumnArgs args)?  column,TResult Function( WidgetEntityId id,  FixedCenterArgs args)?  center,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WidgetEntityRoot() when root != null:
return root(_that.id,_that.args);case WidgetEntityContainer() when container != null:
return container(_that.id,_that.args);case WidgetEntityText() when text != null:
return text(_that.id,_that.args);case WidgetEntityColumn() when column != null:
return column(_that.id,_that.args);case WidgetEntityCenter() when center != null:
return center(_that.id,_that.args);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( WidgetEntityId id,  FixedRootArgs args)  root,required TResult Function( WidgetEntityId id,  FixedContainerArgs args)  container,required TResult Function( WidgetEntityId id,  FixedTextArgs args)  text,required TResult Function( WidgetEntityId id,  FixedColumnArgs args)  column,required TResult Function( WidgetEntityId id,  FixedCenterArgs args)  center,}) {final _that = this;
switch (_that) {
case WidgetEntityRoot():
return root(_that.id,_that.args);case WidgetEntityContainer():
return container(_that.id,_that.args);case WidgetEntityText():
return text(_that.id,_that.args);case WidgetEntityColumn():
return column(_that.id,_that.args);case WidgetEntityCenter():
return center(_that.id,_that.args);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( WidgetEntityId id,  FixedRootArgs args)?  root,TResult? Function( WidgetEntityId id,  FixedContainerArgs args)?  container,TResult? Function( WidgetEntityId id,  FixedTextArgs args)?  text,TResult? Function( WidgetEntityId id,  FixedColumnArgs args)?  column,TResult? Function( WidgetEntityId id,  FixedCenterArgs args)?  center,}) {final _that = this;
switch (_that) {
case WidgetEntityRoot() when root != null:
return root(_that.id,_that.args);case WidgetEntityContainer() when container != null:
return container(_that.id,_that.args);case WidgetEntityText() when text != null:
return text(_that.id,_that.args);case WidgetEntityColumn() when column != null:
return column(_that.id,_that.args);case WidgetEntityCenter() when center != null:
return center(_that.id,_that.args);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WidgetEntityRoot extends WidgetEntity {
  const WidgetEntityRoot({required this.id, required this.args, final  String? $type}): $type = $type ?? 'root',super._();
  factory WidgetEntityRoot.fromJson(Map<String, dynamic> json) => _$WidgetEntityRootFromJson(json);

@override final  WidgetEntityId id;
@override final  FixedRootArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityRootCopyWith<WidgetEntityRoot> get copyWith => _$WidgetEntityRootCopyWithImpl<WidgetEntityRoot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityRootToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityRoot&&(identical(other.id, id) || other.id == id)&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,args);

@override
String toString() {
  return 'WidgetEntity.root(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityRootCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityRootCopyWith(WidgetEntityRoot value, $Res Function(WidgetEntityRoot) _then) = _$WidgetEntityRootCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, FixedRootArgs args
});


@override $WidgetEntityIdCopyWith<$Res> get id;$FixedRootArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityRootCopyWithImpl<$Res>
    implements $WidgetEntityRootCopyWith<$Res> {
  _$WidgetEntityRootCopyWithImpl(this._self, this._then);

  final WidgetEntityRoot _self;
  final $Res Function(WidgetEntityRoot) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? args = null,}) {
  return _then(WidgetEntityRoot(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedRootArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FixedRootArgsCopyWith<$Res> get args {
  
  return $FixedRootArgsCopyWith<$Res>(_self.args, (value) {
    return _then(_self.copyWith(args: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WidgetEntityContainer extends WidgetEntity {
  const WidgetEntityContainer({required this.id, required this.args, final  String? $type}): $type = $type ?? 'container',super._();
  factory WidgetEntityContainer.fromJson(Map<String, dynamic> json) => _$WidgetEntityContainerFromJson(json);

@override final  WidgetEntityId id;
@override final  FixedContainerArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityContainerCopyWith<WidgetEntityContainer> get copyWith => _$WidgetEntityContainerCopyWithImpl<WidgetEntityContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityContainer&&(identical(other.id, id) || other.id == id)&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,args);

@override
String toString() {
  return 'WidgetEntity.container(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityContainerCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityContainerCopyWith(WidgetEntityContainer value, $Res Function(WidgetEntityContainer) _then) = _$WidgetEntityContainerCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, FixedContainerArgs args
});


@override $WidgetEntityIdCopyWith<$Res> get id;$FixedContainerArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityContainerCopyWithImpl<$Res>
    implements $WidgetEntityContainerCopyWith<$Res> {
  _$WidgetEntityContainerCopyWithImpl(this._self, this._then);

  final WidgetEntityContainer _self;
  final $Res Function(WidgetEntityContainer) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? args = null,}) {
  return _then(WidgetEntityContainer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedContainerArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of WidgetEntity
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
  const WidgetEntityText({required this.id, required this.args, final  String? $type}): $type = $type ?? 'text',super._();
  factory WidgetEntityText.fromJson(Map<String, dynamic> json) => _$WidgetEntityTextFromJson(json);

@override final  WidgetEntityId id;
@override final  FixedTextArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityTextCopyWith<WidgetEntityText> get copyWith => _$WidgetEntityTextCopyWithImpl<WidgetEntityText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityText&&(identical(other.id, id) || other.id == id)&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,args);

@override
String toString() {
  return 'WidgetEntity.text(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityTextCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityTextCopyWith(WidgetEntityText value, $Res Function(WidgetEntityText) _then) = _$WidgetEntityTextCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, FixedTextArgs args
});


@override $WidgetEntityIdCopyWith<$Res> get id;$FixedTextArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityTextCopyWithImpl<$Res>
    implements $WidgetEntityTextCopyWith<$Res> {
  _$WidgetEntityTextCopyWithImpl(this._self, this._then);

  final WidgetEntityText _self;
  final $Res Function(WidgetEntityText) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? args = null,}) {
  return _then(WidgetEntityText(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedTextArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of WidgetEntity
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
  const WidgetEntityColumn({required this.id, required this.args, final  String? $type}): $type = $type ?? 'column',super._();
  factory WidgetEntityColumn.fromJson(Map<String, dynamic> json) => _$WidgetEntityColumnFromJson(json);

@override final  WidgetEntityId id;
@override final  FixedColumnArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityColumnCopyWith<WidgetEntityColumn> get copyWith => _$WidgetEntityColumnCopyWithImpl<WidgetEntityColumn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityColumnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityColumn&&(identical(other.id, id) || other.id == id)&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,args);

@override
String toString() {
  return 'WidgetEntity.column(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityColumnCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityColumnCopyWith(WidgetEntityColumn value, $Res Function(WidgetEntityColumn) _then) = _$WidgetEntityColumnCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, FixedColumnArgs args
});


@override $WidgetEntityIdCopyWith<$Res> get id;$FixedColumnArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityColumnCopyWithImpl<$Res>
    implements $WidgetEntityColumnCopyWith<$Res> {
  _$WidgetEntityColumnCopyWithImpl(this._self, this._then);

  final WidgetEntityColumn _self;
  final $Res Function(WidgetEntityColumn) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? args = null,}) {
  return _then(WidgetEntityColumn(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedColumnArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of WidgetEntity
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
  const WidgetEntityCenter({required this.id, required this.args, final  String? $type}): $type = $type ?? 'center',super._();
  factory WidgetEntityCenter.fromJson(Map<String, dynamic> json) => _$WidgetEntityCenterFromJson(json);

@override final  WidgetEntityId id;
@override final  FixedCenterArgs args;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetEntityCenterCopyWith<WidgetEntityCenter> get copyWith => _$WidgetEntityCenterCopyWithImpl<WidgetEntityCenter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetEntityCenterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetEntityCenter&&(identical(other.id, id) || other.id == id)&&(identical(other.args, args) || other.args == args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,args);

@override
String toString() {
  return 'WidgetEntity.center(id: $id, args: $args)';
}


}

/// @nodoc
abstract mixin class $WidgetEntityCenterCopyWith<$Res> implements $WidgetEntityCopyWith<$Res> {
  factory $WidgetEntityCenterCopyWith(WidgetEntityCenter value, $Res Function(WidgetEntityCenter) _then) = _$WidgetEntityCenterCopyWithImpl;
@override @useResult
$Res call({
 WidgetEntityId id, FixedCenterArgs args
});


@override $WidgetEntityIdCopyWith<$Res> get id;$FixedCenterArgsCopyWith<$Res> get args;

}
/// @nodoc
class _$WidgetEntityCenterCopyWithImpl<$Res>
    implements $WidgetEntityCenterCopyWith<$Res> {
  _$WidgetEntityCenterCopyWithImpl(this._self, this._then);

  final WidgetEntityCenter _self;
  final $Res Function(WidgetEntityCenter) _then;

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? args = null,}) {
  return _then(WidgetEntityCenter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as WidgetEntityId,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as FixedCenterArgs,
  ));
}

/// Create a copy of WidgetEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityIdCopyWith<$Res> get id {
  
  return $WidgetEntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of WidgetEntity
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
