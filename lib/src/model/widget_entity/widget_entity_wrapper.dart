import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
part 'widget_entity_wrapper.freezed.dart';

@freezed
abstract class WidgetEntityWrapper with _$WidgetEntityWrapper {
  const WidgetEntityWrapper._();
  const factory WidgetEntityWrapper({
    required WidgetEntityId id,
    required WidgetType type,
    required Map<WidgetArgDefinition, dynamic> args,
  }) = _WidgetEntityWrapper;

  Result<MapEntry<T, dynamic>> getEntry<T extends WidgetArgDefinition>(T key) {
    try {
      return .success(
        args.entries
            .where((e) => e.key is T)
            .map<MapEntry<T, dynamic>>((e) => .new(e.key as T, e.value))
            .singleWhere((e) => e.key == key),
      );
    } catch (e) {
      if (e is StateError) {
        return .failure(WidgetArgNotFoundException(key));
      }
      rethrow;
    }
  }

  WidgetEntity getChildOrThrow({
    required WidgetChildSelector selector,
    required Exception throws,
  }) {
    return getEntry(
      selector.arg,
    ).getOrThrow(throws).getChild(selector.entityId).getOrThrow(throws);
  }

  Result<dynamic> get(WidgetArgDefinition key) {
    if (!args.containsKey(key)) {
      return .failure(WidgetArgNotFoundException(key));
    }
    return .success(args[key]);
  }

  Result<T> getTyped<T>(WidgetArgDefinition key) {
    return get(key).convert<T>((v) {
      try {
        return v as T;
      } catch (e) {
        throw TypeMismatchException(v);
      }
    });
  }

  WidgetEntityWrapper putWith({
    required WidgetArgDefinition arg,
    required dynamic value,
  }) {
    final newArgs = {...args};
    newArgs[arg] = value;
    return copyWith(args: newArgs);
  }

  WidgetEntityWrapper putWithEntry(
    MapEntry<WidgetArgDefinition, dynamic> entry,
  ) =>
      putWith(arg: entry.key, value: entry.value);

  WidgetEntity toEntity() => .fromWrapper(this);

  Iterable<MapEntry<CanHaveChildArg, dynamic>> get subtree => args.entries
      .where((e) => e.key is CanHaveChildArg)
      .map((e) => .new(e.key as CanHaveChildArg, e.value));
}

class TypeMismatchException<T> implements Exception {
  final dynamic v;
  TypeMismatchException([this.v]);
  @override
  String toString() {
    return "値は指定の型(${T.runtimeType})ではありません 値：${v.runtimeType}";
  }
}

class WidgetArgNotFoundException implements Exception {
  final WidgetArgDefinition arg;
  WidgetArgNotFoundException(this.arg);
  @override
  String toString() {
    return "Widgetに指定の引数( ${arg.name} )が存在しません";
  }
}
