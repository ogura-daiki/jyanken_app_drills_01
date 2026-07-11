import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';
part 'widget_arg_definition.freezed.dart';
part 'widget_arg_definition.g.dart';

extension CanHaveChildArgChildrenGetter on MapEntry<CanHaveChildArg, dynamic> {
  List<WidgetEntity> get children => switch (key) {
    WidgetArgDefinitionWidget() => [if (value is WidgetEntity) value],
    WidgetArgDefinitionWidgetList() => value,
  };

  Result<WidgetEntity> getChild(WidgetEntityId id) {
    try {
      return .success(
        children.singleWhere(
          (we) => we.id == id,
          orElse: () => throw WidgetEntityNotFoundException([
            .new(arg: key, entityId: id),
          ]),
        ),
      );
    } catch (e) {
      if (e is WidgetEntityNotFoundException) {
        return .failure(e);
      }
      rethrow;
    }
  }

  bool get canAppendChild => switch (key) {
    //いくらでも追加してOK
    WidgetArgDefinitionWidgetList() => true,
    //子が未設定なら子を追加できる
    WidgetArgDefinitionWidget() => children.isEmpty,
  };

  MapEntry<CanHaveChildArg, dynamic> copyWithAppend(WidgetEntity entity) {
    if (!canAppendChild) {
      throw StateError("追加できる子要素の上限を超えています。");
    }

    return switch (key) {
      WidgetArgDefinitionWidgetList() => .new(key, [...children, entity]),
      WidgetArgDefinitionWidget() => .new(key, entity),
    };
  }

  bool contains(WidgetEntityId id) {
    return children.any((we) => we.id == id);
  }

  MapEntry<CanHaveChildArg, dynamic> copyWithRemoveId(WidgetEntityId id) {
    if (!contains(id)) {
      throw StateError("$idは引数内に存在しません");
    }

    return switch (key) {
      WidgetArgDefinitionWidgetList() => .new(
        key,
        [...children]..removeWhere((we) => we.id == id),
      ),
      WidgetArgDefinitionWidget() => .new(key, null),
    };
  }

  MapEntry<CanHaveChildArg, dynamic> copyWithUpdateWidget({
    required WidgetEntity newEntity,
  }) {
    if (!contains(newEntity.id)) {
      throw StateError("${newEntity.id}は引数内に存在しません");
    }

    switch (key) {
      case WidgetArgDefinitionWidgetList():
        {
          final index = children.indexWhere((we) => we.id == newEntity.id);
          return .new(
            key,
            [...children]..replaceRange(index, index + 1, [newEntity]),
          );
        }
      case WidgetArgDefinitionWidget():
        {
          return .new(key, newEntity);
        }
    }
  }
}

@freezed
sealed class WidgetArgDefinition with _$WidgetArgDefinition {
  const WidgetArgDefinition._();
  const factory WidgetArgDefinition.string({
    required String name,
    required String defaultValue,
  }) = WidgetArgDefinitionString;
  const factory WidgetArgDefinition.double({
    required String name,
    required double defaultValue,
  }) = WidgetArgDefinitionDouble;
  const factory WidgetArgDefinition.doubleNullable({
    required String name,
    required double? defaultValue,
  }) = WidgetArgDefinitionDoubleNullable;
  const factory WidgetArgDefinition.colorNullable({
    required String name,
    required ColorWrapper? defaultValue,
  }) = WidgetArgDefinitionColorNullable;
  const factory WidgetArgDefinition.crossAxisAlignment({
    required String name,
    required CrossAxisAlignment defaultValue,
  }) = WidgetArgDefinitionCrossAxisAlignment;
  @Implements<CanHaveChildArg>()
  const factory WidgetArgDefinition.widget({
    required String name,
    required WidgetEntity? defaultValue,
  }) = WidgetArgDefinitionWidget;
  @Implements<CanHaveChildArg>()
  const factory WidgetArgDefinition.widgetList({
    required String name,
    required List<WidgetEntity> defaultValue,
  }) = WidgetArgDefinitionWidgetList;
  const factory WidgetArgDefinition.alignment({
    required String name,
    required AlignmentWrapper defaultValue,
  }) = WidgetArgDefinitionAlignment;

  factory WidgetArgDefinition.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgDefinitionFromJson(json);
}

sealed class CanHaveChildArg extends WidgetArgDefinition {
  factory CanHaveChildArg.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgDefinitionFromJson(json) as CanHaveChildArg;
}

abstract class WidgetArgDefinitionMixin<T> with _$WidgetArgDefinition {
  TypedArg<T> toTyped();
}
