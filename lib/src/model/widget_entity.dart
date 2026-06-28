import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/container/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_entity.freezed.dart';
part 'widget_entity.g.dart';

@freezed
sealed class WidgetEntity with _$WidgetEntity {
  const WidgetEntity._();
  const factory WidgetEntity.container({required FixedContainerArgs args}) =
      WidgetEntityContainer;
  const factory WidgetEntity.text({required FixedTextArgs args}) =
      WidgetEntityText;
  const factory WidgetEntity.column({required FixedColumnArgs args}) =
      WidgetEntityColumn;
  const factory WidgetEntity.center({required FixedCenterArgs args}) =
      WidgetEntityCenter;

  WidgetType get type => switch (this) {
    WidgetEntityContainer() => .container,
    WidgetEntityText() => .text,
    WidgetEntityColumn() => .column,
    WidgetEntityCenter() => .center,
  };

  factory WidgetEntity.fromType(WidgetType type) => switch (type) {
    .container => .container(args: .initial),
    .text => .text(args: .initial),
    .column => .column(args: .initial),
    .center => .center(args: .initial),
  };

  factory WidgetEntity.fromArgsWrapper(WidgetArgsWrapper wrapper) =>
      switch (wrapper.type) {
        .container => .container(args: .fromWrapper(wrapper)),
        .text => .text(args: .fromWrapper(wrapper)),
        .column => .column(args: .fromWrapper(wrapper)),
        .center => .center(args: .fromWrapper(wrapper)),
      };

  WidgetArgsWrapper toWrapper() => switch (this) {
    WidgetEntityContainer w => w.args.toWrapper(),
    WidgetEntityText w => w.args.toWrapper(),
    WidgetEntityColumn w => w.args.toWrapper(),
    WidgetEntityCenter w => w.args.toWrapper(),
  };

  factory WidgetEntity.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityFromJson(json);
}
