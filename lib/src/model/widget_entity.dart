import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/container/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_entity_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity_id_generator.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_entity.freezed.dart';
part 'widget_entity.g.dart';

@freezed
sealed class WidgetEntity with _$WidgetEntity {
  const WidgetEntity._();
  const factory WidgetEntity.container({
    required int id,
    required FixedContainerArgs args,
  }) = WidgetEntityContainer;
  const factory WidgetEntity.text({
    required int id,
    required FixedTextArgs args,
  }) = WidgetEntityText;
  const factory WidgetEntity.column({
    required int id,
    required FixedColumnArgs args,
  }) = WidgetEntityColumn;
  const factory WidgetEntity.center({
    required int id,
    required FixedCenterArgs args,
  }) = WidgetEntityCenter;

  WidgetType get type => switch (this) {
    WidgetEntityContainer() => .container,
    WidgetEntityText() => .text,
    WidgetEntityColumn() => .column,
    WidgetEntityCenter() => .center,
  };

  factory WidgetEntity.fromType(WidgetType type) => switch (type) {
    .container => .container(
      id: WidgetEntityIdGenerator.i.getId(),
      args: .initial,
    ),
    .text => .text(id: WidgetEntityIdGenerator.i.getId(), args: .initial),
    .column => .column(id: WidgetEntityIdGenerator.i.getId(), args: .initial),
    .center => .center(id: WidgetEntityIdGenerator.i.getId(), args: .initial),
  };

  factory WidgetEntity.fromArgsWrapper(WidgetEntityWrapper wrapper) =>
      switch (wrapper.type) {
        .container => .container(
          id: wrapper.id,
          args: .fromCommonArgs(wrapper.args),
        ),
        .text => .text(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .column => .column(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .center => .center(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
      };

  WidgetEntityWrapper toWrapper() => switch (this) {
    WidgetEntityContainer w => .new(
      id: id,
      type: .container,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityText w => .new(
      id: id,
      type: .text,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityColumn w => .new(
      id: id,
      type: .column,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityCenter w => .new(
      id: id,
      type: .center,
      args: w.args.toCommonArgs(),
    ),
  };

  factory WidgetEntity.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityFromJson(json);
}
