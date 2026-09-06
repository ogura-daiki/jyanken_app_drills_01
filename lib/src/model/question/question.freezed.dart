// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Question {

 int get index; String get projectId; String get name; WidgetEntityRoot get initialRoot;/// required List<QuestionDescription> descriptions,
///
/// QuestionDescription({
///   required String descriptionText,
///   required String descriptionAssetImagePath,
/// })
///
 List<QuestionRule> get validators;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.index, index) || other.index == index)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.initialRoot, initialRoot)&&const DeepCollectionEquality().equals(other.validators, validators));
}


@override
int get hashCode => Object.hash(runtimeType,index,projectId,name,const DeepCollectionEquality().hash(initialRoot),const DeepCollectionEquality().hash(validators));

@override
String toString() {
  return 'Question(index: $index, projectId: $projectId, name: $name, initialRoot: $initialRoot, validators: $validators)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 int index, String projectId, String name, WidgetEntityRoot initialRoot, List<QuestionRule> validators
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? projectId = null,Object? name = null,Object? initialRoot = freezed,Object? validators = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialRoot: freezed == initialRoot ? _self.initialRoot : initialRoot // ignore: cast_nullable_to_non_nullable
as WidgetEntityRoot,validators: null == validators ? _self.validators : validators // ignore: cast_nullable_to_non_nullable
as List<QuestionRule>,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String projectId,  String name,  WidgetEntityRoot initialRoot,  List<QuestionRule> validators)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.index,_that.projectId,_that.name,_that.initialRoot,_that.validators);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String projectId,  String name,  WidgetEntityRoot initialRoot,  List<QuestionRule> validators)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.index,_that.projectId,_that.name,_that.initialRoot,_that.validators);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String projectId,  String name,  WidgetEntityRoot initialRoot,  List<QuestionRule> validators)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.index,_that.projectId,_that.name,_that.initialRoot,_that.validators);case _:
  return null;

}
}

}

/// @nodoc


class _Question extends Question {
  const _Question({required this.index, required this.projectId, required this.name, required this.initialRoot, required final  List<QuestionRule> validators}): _validators = validators,super._();
  

@override final  int index;
@override final  String projectId;
@override final  String name;
@override final  WidgetEntityRoot initialRoot;
/// required List<QuestionDescription> descriptions,
///
/// QuestionDescription({
///   required String descriptionText,
///   required String descriptionAssetImagePath,
/// })
///
 final  List<QuestionRule> _validators;
/// required List<QuestionDescription> descriptions,
///
/// QuestionDescription({
///   required String descriptionText,
///   required String descriptionAssetImagePath,
/// })
///
@override List<QuestionRule> get validators {
  if (_validators is EqualUnmodifiableListView) return _validators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_validators);
}


/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.index, index) || other.index == index)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.initialRoot, initialRoot)&&const DeepCollectionEquality().equals(other._validators, _validators));
}


@override
int get hashCode => Object.hash(runtimeType,index,projectId,name,const DeepCollectionEquality().hash(initialRoot),const DeepCollectionEquality().hash(_validators));

@override
String toString() {
  return 'Question(index: $index, projectId: $projectId, name: $name, initialRoot: $initialRoot, validators: $validators)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 int index, String projectId, String name, WidgetEntityRoot initialRoot, List<QuestionRule> validators
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? projectId = null,Object? name = null,Object? initialRoot = freezed,Object? validators = null,}) {
  return _then(_Question(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,initialRoot: freezed == initialRoot ? _self.initialRoot : initialRoot // ignore: cast_nullable_to_non_nullable
as WidgetEntityRoot,validators: null == validators ? _self._validators : validators // ignore: cast_nullable_to_non_nullable
as List<QuestionRule>,
  ));
}


}

// dart format on
