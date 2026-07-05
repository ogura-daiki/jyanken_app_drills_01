import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';
part 'widget_arg.freezed.dart';
part 'widget_arg.g.dart';

extension CanHaveChildArgChildrenGetter on MapEntry<CanHaveChildArg, dynamic> {
  List<WidgetEntity> get children => switch (key) {
    WidgetArgWidget() => [if (value is WidgetEntity) value],
    WidgetArgWidgetList() => value,
  };

  bool get canAppendChild => switch (key) {
    //いくらでも追加してOK
    WidgetArgWidgetList() => true,
    //子が未設定なら子を追加できる
    WidgetArgWidget() => children.isEmpty,
  };

  MapEntry<CanHaveChildArg, dynamic> copyWithAppend(WidgetEntity entity) {
    if (!canAppendChild) {
      throw StateError("追加できる子要素の上限を超えています。");
    }

    return switch (key) {
      WidgetArgWidgetList() => .new(key, [...children, entity]),
      WidgetArgWidget() => .new(key, entity),
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
      WidgetArgWidgetList() => .new(
        key,
        [...children]..removeWhere((we) => we.id == id),
      ),
      WidgetArgWidget() => .new(key, null),
    };
  }
}

@freezed
sealed class WidgetArg with _$WidgetArg {
  const WidgetArg._();
  const factory WidgetArg.string({
    required String name,
    required String defaultValue,
  }) = WidgetArgString;
  const factory WidgetArg.double({
    required String name,
    required double defaultValue,
  }) = WidgetArgDouble;
  const factory WidgetArg.doubleNullable({
    required String name,
    required double? defaultValue,
  }) = WidgetArgDoubleNullable;
  const factory WidgetArg.colorNullable({
    required String name,
    required ColorWrapper? defaultValue,
  }) = WidgetArgColorNullable;
  const factory WidgetArg.crossAxisAlignment({
    required String name,
    required CrossAxisAlignment defaultValue,
  }) = WidgetArgCrossAxisAlignment;
  @Implements<CanHaveChildArg>()
  const factory WidgetArg.widget({
    required String name,
    required WidgetEntity? defaultValue,
  }) = WidgetArgWidget;
  @Implements<CanHaveChildArg>()
  const factory WidgetArg.widgetList({
    required String name,
    required List<WidgetEntity> defaultValue,
  }) = WidgetArgWidgetList;

  factory WidgetArg.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgFromJson(json);
}

sealed class CanHaveChildArg extends WidgetArg {
  factory CanHaveChildArg.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgFromJson(json) as CanHaveChildArg;
}

abstract class WidgetArgMixin<T> with _$WidgetArg {
  TypedArg<T> toTyped();
}
