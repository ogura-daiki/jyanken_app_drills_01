import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/list_ext.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/list_ext.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/list_ext.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_entity.freezed.dart';
part 'widget_entity.g.dart';

@freezed
sealed class WidgetEntity with _$WidgetEntity {
  const WidgetEntity._();
  const factory WidgetEntity.text({required FixedTextArgs args}) =
      WidgetEntityText;
  const factory WidgetEntity.column({required FixedColumnArgs args}) =
      WidgetEntityColumn;
  const factory WidgetEntity.center({required FixedCenterArgs args}) =
      WidgetEntityCenter;

  WidgetType get type => switch (this) {
    WidgetEntityText() => .text,
    WidgetEntityColumn() => .column,
    WidgetEntityCenter() => .center,
  };

  factory WidgetEntity.fromType(WidgetType type) => switch (type) {
    .text => .text(args: .initial),
    .column => .column(args: .initial),
    .center => .center(args: .initial),
  };

  factory WidgetEntity.fromArgsWrapper(WidgetArgsWrapper wrapper) =>
      switch (wrapper.type) {
        .text => .text(
          args: wrapper.args.entries
              .map((e) => TextArgsDefinition.fromKV(e.key.name, e.value))
              .toList()
              .fixed,
        ),
        .column => .column(
          args: wrapper.args.entries
              .map((e) => ColumnArgsDefinition.fromKV(e.key.name, e.value))
              .toList()
              .fixed,
        ),
        .center => .center(
          args: wrapper.args.entries
              .map((e) => CenterArgsDefinition.fromKV(e.key.name, e.value))
              .toList()
              .fixed,
        ),
      };

  WidgetArgsWrapper toWrapper() => switch (this) {
    WidgetEntityText w => TextArgsDefinition.fromFixed(w.args).toArgs(),
    WidgetEntityColumn w => ColumnArgsDefinition.fromFixed(w.args).toArgs(),
    WidgetEntityCenter w => CenterArgsDefinition.fromFixed(w.args).toArgs(),
  };

  factory WidgetEntity.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityFromJson(json);
}
