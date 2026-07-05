import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/container/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/root/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';
part 'widget_entity.freezed.dart';
part 'widget_entity.g.dart';

@freezed
sealed class WidgetEntity with _$WidgetEntity {
  const WidgetEntity._();
  const factory WidgetEntity.root({
    required WidgetEntityId id,
    required FixedRootArgs args,
  }) = WidgetEntityRoot;
  const factory WidgetEntity.container({
    required WidgetEntityId id,
    required FixedContainerArgs args,
  }) = WidgetEntityContainer;
  const factory WidgetEntity.text({
    required WidgetEntityId id,
    required FixedTextArgs args,
  }) = WidgetEntityText;
  const factory WidgetEntity.column({
    required WidgetEntityId id,
    required FixedColumnArgs args,
  }) = WidgetEntityColumn;
  const factory WidgetEntity.center({
    required WidgetEntityId id,
    required FixedCenterArgs args,
  }) = WidgetEntityCenter;

  WidgetType get type => switch (this) {
    WidgetEntityRoot() => .root,
    WidgetEntityContainer() => .container,
    WidgetEntityText() => .text,
    WidgetEntityColumn() => .column,
    WidgetEntityCenter() => .center,
  };

  factory WidgetEntity.fromType(WidgetType type) => switch (type) {
    .root => .root(id: .create(), args: .initial),
    .container => .container(id: .create(), args: .initial),
    .text => .text(id: .create(), args: .initial),
    .column => .column(id: .create(), args: .initial),
    .center => .center(id: .create(), args: .initial),
  };

  factory WidgetEntity.fromWrapper(WidgetEntityWrapper wrapper) =>
      switch (wrapper.type) {
        .root => .root(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .container => .container(
          id: wrapper.id,
          args: .fromCommonArgs(wrapper.args),
        ),
        .text => .text(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .column => .column(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .center => .center(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
      };

  WidgetEntityWrapper toWrapper() => switch (this) {
    WidgetEntityRoot w => .new(
      id: id,
      type: .root,
      args: w.args.toCommonArgs(),
    ),
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
