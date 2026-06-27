import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/keys.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'args_definition.freezed.dart';
part 'args_definition.g.dart';

@freezed
sealed class ColumnArgsDefinition with _$ColumnArgsDefinition {
  const ColumnArgsDefinition._();
  const factory ColumnArgsDefinition.crossAxisAlignment({
    required CrossAxisAlignment value,
  }) = ColumnArgsDefinitionCrossAxisAlignment;
  const factory ColumnArgsDefinition.children({
    required List<WidgetEntity> value,
  }) = ColumnArgsDefinitionChildren;

  ColumnArgsKey get key => switch (this) {
    ColumnArgsDefinitionCrossAxisAlignment() => .crossAxisAlignment,
    ColumnArgsDefinitionChildren() => .children,
  };

  static ColumnArgsDefinition fromKV(String key, dynamic value) =>
      switch (ColumnArgsKey.fromName(key)) {
        .crossAxisAlignment => .crossAxisAlignment(value: value),
        .children => .children(value: value),
      };

  static List<ColumnArgsDefinition> fromFixed(FixedColumnArgs fixed) => [
    .crossAxisAlignment(value: fixed.crossAxisAlignment),
    .children(value: fixed.children),
  ];

  factory ColumnArgsDefinition.fromJson(Map<String, dynamic> json) =>
      _$ColumnArgsDefinitionFromJson(json);
}
