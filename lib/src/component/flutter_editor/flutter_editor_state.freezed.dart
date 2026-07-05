// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlutterEditorState {

 int get editorId; WidgetEntity get treeRoot; List<WidgetChildSelector> get selection;
/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlutterEditorStateCopyWith<FlutterEditorState> get copyWith => _$FlutterEditorStateCopyWithImpl<FlutterEditorState>(this as FlutterEditorState, _$identity);

  /// Serializes this FlutterEditorState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlutterEditorState&&(identical(other.editorId, editorId) || other.editorId == editorId)&&(identical(other.treeRoot, treeRoot) || other.treeRoot == treeRoot)&&const DeepCollectionEquality().equals(other.selection, selection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,editorId,treeRoot,const DeepCollectionEquality().hash(selection));

@override
String toString() {
  return 'FlutterEditorState(editorId: $editorId, treeRoot: $treeRoot, selection: $selection)';
}


}

/// @nodoc
abstract mixin class $FlutterEditorStateCopyWith<$Res>  {
  factory $FlutterEditorStateCopyWith(FlutterEditorState value, $Res Function(FlutterEditorState) _then) = _$FlutterEditorStateCopyWithImpl;
@useResult
$Res call({
 int editorId, WidgetEntity treeRoot, List<WidgetChildSelector> selection
});


$WidgetEntityCopyWith<$Res> get treeRoot;

}
/// @nodoc
class _$FlutterEditorStateCopyWithImpl<$Res>
    implements $FlutterEditorStateCopyWith<$Res> {
  _$FlutterEditorStateCopyWithImpl(this._self, this._then);

  final FlutterEditorState _self;
  final $Res Function(FlutterEditorState) _then;

/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? editorId = null,Object? treeRoot = null,Object? selection = null,}) {
  return _then(_self.copyWith(
editorId: null == editorId ? _self.editorId : editorId // ignore: cast_nullable_to_non_nullable
as int,treeRoot: null == treeRoot ? _self.treeRoot : treeRoot // ignore: cast_nullable_to_non_nullable
as WidgetEntity,selection: null == selection ? _self.selection : selection // ignore: cast_nullable_to_non_nullable
as List<WidgetChildSelector>,
  ));
}
/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res> get treeRoot {
  
  return $WidgetEntityCopyWith<$Res>(_self.treeRoot, (value) {
    return _then(_self.copyWith(treeRoot: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlutterEditorState].
extension FlutterEditorStatePatterns on FlutterEditorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlutterEditorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlutterEditorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlutterEditorState value)  $default,){
final _that = this;
switch (_that) {
case _FlutterEditorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlutterEditorState value)?  $default,){
final _that = this;
switch (_that) {
case _FlutterEditorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int editorId,  WidgetEntity treeRoot,  List<WidgetChildSelector> selection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlutterEditorState() when $default != null:
return $default(_that.editorId,_that.treeRoot,_that.selection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int editorId,  WidgetEntity treeRoot,  List<WidgetChildSelector> selection)  $default,) {final _that = this;
switch (_that) {
case _FlutterEditorState():
return $default(_that.editorId,_that.treeRoot,_that.selection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int editorId,  WidgetEntity treeRoot,  List<WidgetChildSelector> selection)?  $default,) {final _that = this;
switch (_that) {
case _FlutterEditorState() when $default != null:
return $default(_that.editorId,_that.treeRoot,_that.selection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlutterEditorState extends FlutterEditorState {
  const _FlutterEditorState({required this.editorId, required this.treeRoot, required final  List<WidgetChildSelector> selection}): _selection = selection,super._();
  factory _FlutterEditorState.fromJson(Map<String, dynamic> json) => _$FlutterEditorStateFromJson(json);

@override final  int editorId;
@override final  WidgetEntity treeRoot;
 final  List<WidgetChildSelector> _selection;
@override List<WidgetChildSelector> get selection {
  if (_selection is EqualUnmodifiableListView) return _selection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selection);
}


/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlutterEditorStateCopyWith<_FlutterEditorState> get copyWith => __$FlutterEditorStateCopyWithImpl<_FlutterEditorState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlutterEditorStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlutterEditorState&&(identical(other.editorId, editorId) || other.editorId == editorId)&&(identical(other.treeRoot, treeRoot) || other.treeRoot == treeRoot)&&const DeepCollectionEquality().equals(other._selection, _selection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,editorId,treeRoot,const DeepCollectionEquality().hash(_selection));

@override
String toString() {
  return 'FlutterEditorState(editorId: $editorId, treeRoot: $treeRoot, selection: $selection)';
}


}

/// @nodoc
abstract mixin class _$FlutterEditorStateCopyWith<$Res> implements $FlutterEditorStateCopyWith<$Res> {
  factory _$FlutterEditorStateCopyWith(_FlutterEditorState value, $Res Function(_FlutterEditorState) _then) = __$FlutterEditorStateCopyWithImpl;
@override @useResult
$Res call({
 int editorId, WidgetEntity treeRoot, List<WidgetChildSelector> selection
});


@override $WidgetEntityCopyWith<$Res> get treeRoot;

}
/// @nodoc
class __$FlutterEditorStateCopyWithImpl<$Res>
    implements _$FlutterEditorStateCopyWith<$Res> {
  __$FlutterEditorStateCopyWithImpl(this._self, this._then);

  final _FlutterEditorState _self;
  final $Res Function(_FlutterEditorState) _then;

/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? editorId = null,Object? treeRoot = null,Object? selection = null,}) {
  return _then(_FlutterEditorState(
editorId: null == editorId ? _self.editorId : editorId // ignore: cast_nullable_to_non_nullable
as int,treeRoot: null == treeRoot ? _self.treeRoot : treeRoot // ignore: cast_nullable_to_non_nullable
as WidgetEntity,selection: null == selection ? _self._selection : selection // ignore: cast_nullable_to_non_nullable
as List<WidgetChildSelector>,
  ));
}

/// Create a copy of FlutterEditorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WidgetEntityCopyWith<$Res> get treeRoot {
  
  return $WidgetEntityCopyWith<$Res>(_self.treeRoot, (value) {
    return _then(_self.copyWith(treeRoot: value));
  });
}
}

// dart format on
