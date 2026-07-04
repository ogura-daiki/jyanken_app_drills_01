import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'widget_arg.freezed.dart';
part 'widget_arg.g.dart';

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
  const factory WidgetArg.widget({
    required String name,
    required WidgetEntity? defaultValue,
  }) = WidgetArgWidget;
  const factory WidgetArg.widgetList({
    required String name,
    required List<WidgetEntity> defaultValue,
  }) = WidgetArgWidgetList;

  factory WidgetArg.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgFromJson(json);

  bool get canHaveWidget => switch (this) {
    WidgetArgString() => false,
    WidgetArgDouble() => false,
    WidgetArgDoubleNullable() => false,
    WidgetArgColorNullable() => false,
    WidgetArgCrossAxisAlignment() => false,
    WidgetArgWidget() => true,
    WidgetArgWidgetList() => true,
  };
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'widget_arg.freezed.dart';
// part 'widget_arg.g.dart';

// @Freezed(genericArgumentFactories: true)
// abstract class WidgetArg<T> with _$WidgetArg<T> {
//   const WidgetArg._();
//   const factory WidgetArg({required String name, required T defaultValue}) =
//       _WidgetArg;
//   factory WidgetArg.fromJson(
//     Map<String, dynamic> json,
//     T Function(Object?) fromJsonT,
//   ) => _$WidgetArgFromJson(json, fromJsonT);
// }

// @freezed
// abstract class WidgetArg with _$WidgetArg {
//   const WidgetArg._();
//   const factory WidgetArg({
//     required WidgetArgsType type,
//     required String name,
//   }) = _WidgetArg;

//   factory WidgetArg.fromJson(Map<String, dynamic> json) =>
//       _$WidgetArgFromJson(json);
// }
