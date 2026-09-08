import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
part 'variable_value.freezed.dart';
part 'variable_value.g.dart';

@freezed
sealed class VariableValue with _$VariableValue {
  const VariableValue._();
  const factory VariableValue.string({required String rawValue}) =
      VariableValueString;
  const factory VariableValue.double({required double rawValue}) =
      VariableValueDouble;
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

  factory VariableValue.fromJson(Map<String, dynamic> json) =>
      _$VariableValueFromJson(json);

  VariableValue copyWithDynamic({required dynamic rawValue}) => switch (this) {
    VariableValueString v => v.copyWith(rawValue: rawValue),
    VariableValueDouble v => v.copyWith(rawValue: rawValue),
    VariableValueDoubleNullable v => v.copyWith(rawValue: rawValue),
    VariableValueColorNullable v => v.copyWith(rawValue: rawValue),
    VariableValueCrossAxisAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueMainAxisAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueMainAxisSize v => v.copyWith(rawValue: rawValue),
    VariableValueWidget v => v.copyWith(rawValue: rawValue),
    VariableValueWidgetList v => v.copyWith(rawValue: rawValue),
    VariableValueAlignment v => v.copyWith(rawValue: rawValue),
    VariableValueTextStyle v => v.copyWith(rawValue: rawValue),
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
