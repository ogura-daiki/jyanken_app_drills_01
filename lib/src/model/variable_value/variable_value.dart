import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/scope_definition/scope_definition.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/variable/variable.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
part 'variable_value.freezed.dart';
part 'variable_value.g.dart';

enum VariableValueEnum {
  string,
  stringList,
  double,
  int,
  doubleNullable,
  colorNullable,
  crossAxisAlignment,
  mainAxisAlignment,
  mainAxisSize,
  widget,
  widgetList,
  alignment,
  textStyle,
  variable,
  scope;

  bool get canCreateVariable => switch (this) {
    VariableValueEnum.string ||
    VariableValueEnum.stringList ||
    VariableValueEnum.double ||
    VariableValueEnum.int ||
    VariableValueEnum.doubleNullable ||
    VariableValueEnum.colorNullable ||
    VariableValueEnum.crossAxisAlignment ||
    VariableValueEnum.mainAxisAlignment ||
    VariableValueEnum.mainAxisSize ||
    VariableValueEnum.textStyle ||
    VariableValueEnum.alignment => true,
    VariableValueEnum.widget ||
    VariableValueEnum.widgetList ||
    VariableValueEnum.variable ||
    VariableValueEnum.scope => false,
  };

  static Iterable<VariableValueEnum> get whereCanCreateVariable =>
      values.where((e) => e.canCreateVariable);
}

@freezed
sealed class VariableValue with _$VariableValue {
  const VariableValue._();
  const factory VariableValue.string({required String rawValue}) =
      VariableValueString;
  const factory VariableValue.stringList({required List<String> rawValue}) =
      VariableValueStringList;
  const factory VariableValue.double({required double rawValue}) =
      VariableValueDouble;
  const factory VariableValue.int({required int rawValue}) = VariableValueInt;
  @Implements<VariableTypeNullable>()
  const factory VariableValue.doubleNullable({required double? rawValue}) =
      VariableValueDoubleNullable;
  @Implements<VariableTypeNullable>()
  const factory VariableValue.colorNullable({required ColorWrapper? rawValue}) =
      VariableValueColorNullable;
  const factory VariableValue.crossAxisAlignment({
    required CrossAxisAlignment rawValue,
  }) = VariableValueCrossAxisAlignment;
  const factory VariableValue.mainAxisAlignment({
    required MainAxisAlignment rawValue,
  }) = VariableValueMainAxisAlignment;
  const factory VariableValue.mainAxisSize({required MainAxisSize rawValue}) =
      VariableValueMainAxisSize;
  @Implements<VariableTypeNullable>()
  @Implements<VariableTypeWidget>()
  const factory VariableValue.widget({required WidgetEntity? rawValue}) =
      VariableValueWidget;
  @Implements<VariableTypeWidget>()
  const factory VariableValue.widgetList({
    required List<WidgetEntity> rawValue,
  }) = VariableValueWidgetList;
  const factory VariableValue.alignment({required AlignmentWrapper rawValue}) =
      VariableValueAlignment;
  @Implements<VariableTypeNullable>()
  const factory VariableValue.textStyle({required TextStyleWrapper? rawValue}) =
      VariableValueTextStyle;
  const factory VariableValue.variable({required Variable rawValue}) =
      VariableValueVariable;
  const factory VariableValue.scope({required ScopeDefinition rawValue}) =
      VariableValueScope;

  factory VariableValue.fromJson(Map<String, dynamic> json) =>
      _$VariableValueFromJson(json);

  VariableValue copyWithDynamic({required dynamic rawValue}) => switch (this) {
    VariableValueString v => v.copyWith(rawValue: rawValue),
    VariableValueStringList v => v.copyWith(rawValue: rawValue),
    VariableValueDouble v => v.copyWith(rawValue: rawValue),
    VariableValueInt v => v.copyWith(rawValue: rawValue),
    VariableValueDoubleNullable v => v.copyWith(rawValue: rawValue),
    VariableValueColorNullable v => v.copyWith(rawValue: rawValue),
    VariableValueCrossAxisAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueMainAxisAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueMainAxisSize v => v.copyWith(rawValue: rawValue),
    VariableValueWidget v => v.copyWith(rawValue: rawValue),
    VariableValueWidgetList v => v.copyWith(rawValue: rawValue),
    VariableValueAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueTextStyle v => v.copyWith(rawValue: rawValue),
    VariableValueVariable v => v.copyWith(rawValue: rawValue),
    VariableValueScope v => v.copyWith(rawValue: rawValue),
  };

  VariableValueEnum toEnum() => switch (this) {
    VariableValueString() => .string,
    VariableValueStringList() => .stringList,
    VariableValueDouble() => .double,
    VariableValueInt() => .int,
    VariableValueDoubleNullable() => .doubleNullable,
    VariableValueColorNullable() => .colorNullable,
    VariableValueCrossAxisAlignment() => .crossAxisAlignment,
    VariableValueMainAxisAlignment() => .mainAxisAlignment,
    VariableValueMainAxisSize() => .mainAxisSize,
    VariableValueWidget() => .widget,
    VariableValueWidgetList() => .widgetList,
    VariableValueAlignment() => .alignment,
    VariableValueTextStyle() => .textStyle,
    VariableValueVariable() => .variable,
    VariableValueScope() => .scope,
  };

  static VariableValue fromEnum(VariableValueEnum e) => switch (e) {
    VariableValueEnum.string => .string(rawValue: ""),
    VariableValueEnum.stringList => .stringList(rawValue: []),
    VariableValueEnum.double => .double(rawValue: 0),
    VariableValueEnum.int => .int(rawValue: 0),
    VariableValueEnum.doubleNullable => .doubleNullable(rawValue: null),
    VariableValueEnum.colorNullable => .colorNullable(rawValue: null),
    VariableValueEnum.crossAxisAlignment => .crossAxisAlignment(
      rawValue: .start,
    ),
    VariableValueEnum.mainAxisAlignment => .mainAxisAlignment(rawValue: .start),
    VariableValueEnum.mainAxisSize => .mainAxisSize(rawValue: .min),
    VariableValueEnum.widget => .widget(rawValue: null),
    VariableValueEnum.widgetList => .widgetList(rawValue: []),
    VariableValueEnum.alignment => .alignment(rawValue: .topLeft),
    VariableValueEnum.textStyle => .textStyle(rawValue: null),
    VariableValueEnum.variable => .variable(
      rawValue: .new(
        name: "",
        initialValue: .fromEnum(.string),
        value: .fromEnum(.string),
      ),
    ),
    VariableValueEnum.scope => .scope(rawValue: .new(variables: [])),
  };
}

sealed class VariableTypeWidget extends VariableValue {
  factory VariableTypeWidget.fromJson(Map<String, dynamic> json) =>
      _$VariableValueFromJson(json) as VariableTypeWidget;
}

sealed class VariableTypeNullable extends VariableValue {
  factory VariableTypeNullable.fromJson(Map<String, dynamic> json) =>
      _$VariableValueFromJson(json) as VariableTypeNullable;
}
