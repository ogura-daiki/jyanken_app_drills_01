import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
part 'widget_entity_wrapper.freezed.dart';

@freezed
abstract class WidgetEntityWrapper with _$WidgetEntityWrapper {
  const WidgetEntityWrapper._();
  const factory WidgetEntityWrapper({
    required WidgetEntityId id,
    required WidgetType type,
    required Set<WidgetArgument> args,
  }) = _WidgetEntityWrapper;

  Result<WidgetArgument> getEntry(ArgumentDefinition definition) {
    try {
      return .success(args.findByArgDefinition(definition));
    } catch (e) {
      if (e is StateError) {
        return .failure(WidgetArgNotFoundException(definition));
      }
      rethrow;
    }
  }

  Result<VariableValue> get(ArgumentDefinition definition) =>
      getEntry(definition).convert((v) => v.value);

  WidgetEntity getChildOrThrow({
    required WidgetChildSelector selector,
    required Exception throws,
  }) {
    return getEntry(selector.arg)
        .getOrThrow(throws)
        .value
        .requireType<VariableTypeWidget>(Exception("子要素ではない"))
        .getChild(selector.entityId)
        .getOrThrow(throws);
  }

  WidgetEntityWrapper putWith({
    required ArgumentDefinition arg,
    required dynamic value,
  }) {
    return copyWith(
      args: args.updateWith(
        .new(
          definition: arg,
          value: arg.defaultValue.copyWithDynamic(rawValue: value),
        ),
      ),
    );
  }

  WidgetEntityWrapper putWithEntry(WidgetArgument newArg) =>
      putWith(arg: newArg.definition, value: newArg.value.rawValue);

  WidgetEntity toEntity() => .fromWrapper(this);

  Iterable<WidgetArgument> get subtree =>
      args.where((e) => e.definition.defaultValue is VariableTypeWidget);
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
  final ArgumentDefinition arg;
  WidgetArgNotFoundException(this.arg);
  @override
  String toString() {
    return "Widgetに指定の引数( ${arg.name} )が存在しません";
  }
}

extension VariableTypeWidgetExt on VariableTypeWidget {
  List<WidgetEntity> get children => switch (this) {
    VariableValueWidget(:final rawValue) => [?rawValue],
    VariableValueWidgetList(:final rawValue) => rawValue,
  };

  Result<WidgetEntity> getChild(WidgetEntityId id) {
    try {
      return .success(children.singleWhere((w) => w.id == id));
    } catch (e) {
      return .failure(WidgetEntityNotFoundException());
    }
  }

  bool get canAppendChild => switch (this) {
    //いくらでも追加してOK
    VariableValueWidgetList() => true,
    //子が未設定なら子を追加できる
    VariableValueWidget(:final rawValue) => rawValue == null,
  };

  VariableTypeWidget copyWithAppend(WidgetEntity entity) {
    if (!canAppendChild) {
      throw StateError("追加できる子要素の上限を超えています。");
    }

    return switch (this) {
      VariableValueWidgetList() => VariableValueWidgetList(
        rawValue: [...children, entity],
      ),
      VariableValueWidget() => VariableValueWidget(rawValue: entity),
    };
  }

  bool contains(WidgetEntityId id) {
    return children.any((we) => we.id == id);
  }

  VariableTypeWidget copyWithRemoveId(WidgetEntityId id) {
    if (!contains(id)) {
      throw StateError("$idは引数内に存在しません");
    }

    return switch (this) {
      VariableValueWidgetList() => VariableValueWidgetList(
        rawValue: [...children]..removeWhere((we) => we.id == id),
      ),
      VariableValueWidget() => VariableValueWidget(rawValue: null),
    };
  }

  VariableTypeWidget copyWithUpdateWidget({required WidgetEntity newEntity}) {
    if (!contains(newEntity.id)) {
      throw StateError("${newEntity.id}は引数内に存在しません");
    }

    return switch (this) {
      VariableValueWidget() => VariableValueWidget(rawValue: newEntity),
      VariableValueWidgetList() =>
        children
            .indexWhere((we) => we.id == newEntity.id)
            .let(
              (index) => VariableValueWidgetList(
                rawValue: [...children]
                  ..replaceRange(index, index + 1, [newEntity]),
              ),
            ),
    };
  }
}
