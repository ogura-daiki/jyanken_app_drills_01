import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_entity_wrapper.freezed.dart';

@freezed
abstract class WidgetEntityWrapper with _$WidgetEntityWrapper {
  const WidgetEntityWrapper._();
  const factory WidgetEntityWrapper({
    required int id,
    required WidgetType type,
    required Map<WidgetArg, dynamic> args,
  }) = _WidgetEntityWrapper;

  Result<MapEntry<T, dynamic>> getEntry<T extends WidgetArg>(T key) {
    try {
      return .success(
        args.entries.singleWhere((e) => e.key == key) as MapEntry<T, dynamic>,
      );
    } catch (e) {
      if (e is StateError) {
        return .failure(WidgetArgNotFoundException(key));
      }
      rethrow;
    }
  }

  Result<dynamic> get(WidgetArg key) {
    if (!args.containsKey(key)) {
      return .failure(WidgetArgNotFoundException(key));
    }
    return .success(args[key]);
  }

  Result<T> getTyped<T>(WidgetArg key) {
    return get(key).convert<T>((v) {
      try {
        return v as T;
      } catch (e) {
        throw TypeMismatchException(v);
      }
    });
  }

  WidgetEntityWrapper putWith({
    required WidgetArg arg,
    required dynamic value,
  }) {
    final newArgs = {...args};
    newArgs[arg] = value;
    return copyWith(args: newArgs);
  }

  WidgetEntity toEntity() => .fromWrapper(this);

  Iterable<MapEntry<CanHaveChildArg, dynamic>> get subtree =>
      args.entries.whereType<MapEntry<CanHaveChildArg, dynamic>>();
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
  final WidgetArg arg;
  WidgetArgNotFoundException(this.arg);
  @override
  String toString() {
    return "Widgetに指定の引数( ${arg.name} )が存在しません";
  }
}
