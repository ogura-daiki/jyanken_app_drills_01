// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ProjectId _$ProjectIdFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'userProject':
          return ProjectIdTypeUserProject.fromJson(
            json
          );
                case 'question':
          return ProjectIdTypeQuestion.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ProjectId',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ProjectId {



  /// Serializes this ProjectId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectId);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProjectId()';
}


}

/// @nodoc
class $ProjectIdCopyWith<$Res>  {
$ProjectIdCopyWith(ProjectId _, $Res Function(ProjectId) __);
}


/// Adds pattern-matching-related methods to [ProjectId].
extension ProjectIdPatterns on ProjectId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProjectIdTypeUserProject value)?  userProject,TResult Function( ProjectIdTypeQuestion value)?  question,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProjectIdTypeUserProject() when userProject != null:
return userProject(_that);case ProjectIdTypeQuestion() when question != null:
return question(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProjectIdTypeUserProject value)  userProject,required TResult Function( ProjectIdTypeQuestion value)  question,}){
final _that = this;
switch (_that) {
case ProjectIdTypeUserProject():
return userProject(_that);case ProjectIdTypeQuestion():
return question(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProjectIdTypeUserProject value)?  userProject,TResult? Function( ProjectIdTypeQuestion value)?  question,}){
final _that = this;
switch (_that) {
case ProjectIdTypeUserProject() when userProject != null:
return userProject(_that);case ProjectIdTypeQuestion() when question != null:
return question(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  userProject,TResult Function( String questionId)?  question,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProjectIdTypeUserProject() when userProject != null:
return userProject(_that.id);case ProjectIdTypeQuestion() when question != null:
return question(_that.questionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  userProject,required TResult Function( String questionId)  question,}) {final _that = this;
switch (_that) {
case ProjectIdTypeUserProject():
return userProject(_that.id);case ProjectIdTypeQuestion():
return question(_that.questionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  userProject,TResult? Function( String questionId)?  question,}) {final _that = this;
switch (_that) {
case ProjectIdTypeUserProject() when userProject != null:
return userProject(_that.id);case ProjectIdTypeQuestion() when question != null:
return question(_that.questionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ProjectIdTypeUserProject extends ProjectId {
  const ProjectIdTypeUserProject(this.id, {final  String? $type}): $type = $type ?? 'userProject',super._();
  factory ProjectIdTypeUserProject.fromJson(Map<String, dynamic> json) => _$ProjectIdTypeUserProjectFromJson(json);

 final  String id;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProjectId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectIdTypeUserProjectCopyWith<ProjectIdTypeUserProject> get copyWith => _$ProjectIdTypeUserProjectCopyWithImpl<ProjectIdTypeUserProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectIdTypeUserProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectIdTypeUserProject&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProjectId.userProject(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProjectIdTypeUserProjectCopyWith<$Res> implements $ProjectIdCopyWith<$Res> {
  factory $ProjectIdTypeUserProjectCopyWith(ProjectIdTypeUserProject value, $Res Function(ProjectIdTypeUserProject) _then) = _$ProjectIdTypeUserProjectCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ProjectIdTypeUserProjectCopyWithImpl<$Res>
    implements $ProjectIdTypeUserProjectCopyWith<$Res> {
  _$ProjectIdTypeUserProjectCopyWithImpl(this._self, this._then);

  final ProjectIdTypeUserProject _self;
  final $Res Function(ProjectIdTypeUserProject) _then;

/// Create a copy of ProjectId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ProjectIdTypeUserProject(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ProjectIdTypeQuestion extends ProjectId {
  const ProjectIdTypeQuestion(this.questionId, {final  String? $type}): $type = $type ?? 'question',super._();
  factory ProjectIdTypeQuestion.fromJson(Map<String, dynamic> json) => _$ProjectIdTypeQuestionFromJson(json);

 final  String questionId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProjectId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectIdTypeQuestionCopyWith<ProjectIdTypeQuestion> get copyWith => _$ProjectIdTypeQuestionCopyWithImpl<ProjectIdTypeQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectIdTypeQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectIdTypeQuestion&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId);

@override
String toString() {
  return 'ProjectId.question(questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $ProjectIdTypeQuestionCopyWith<$Res> implements $ProjectIdCopyWith<$Res> {
  factory $ProjectIdTypeQuestionCopyWith(ProjectIdTypeQuestion value, $Res Function(ProjectIdTypeQuestion) _then) = _$ProjectIdTypeQuestionCopyWithImpl;
@useResult
$Res call({
 String questionId
});




}
/// @nodoc
class _$ProjectIdTypeQuestionCopyWithImpl<$Res>
    implements $ProjectIdTypeQuestionCopyWith<$Res> {
  _$ProjectIdTypeQuestionCopyWithImpl(this._self, this._then);

  final ProjectIdTypeQuestion _self;
  final $Res Function(ProjectIdTypeQuestion) _then;

/// Create a copy of ProjectId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionId = null,}) {
  return _then(ProjectIdTypeQuestion(
null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
