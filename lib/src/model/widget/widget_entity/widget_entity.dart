import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/align/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/expanded/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/container/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/01/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/02/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/03/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/root/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/row/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/scope/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';
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
  const factory WidgetEntity.row({
    required WidgetEntityId id,
    required FixedRowArgs args,
  }) = WidgetEntityRow;
  const factory WidgetEntity.expanded({
    required WidgetEntityId id,
    required FixedExpandedArgs args,
  }) = WidgetEntityExpanded;
  const factory WidgetEntity.center({
    required WidgetEntityId id,
    required FixedCenterArgs args,
  }) = WidgetEntityCenter;
  const factory WidgetEntity.align({
    required WidgetEntityId id,
    required FixedAlignArgs args,
  }) = WidgetEntityAlign;
  const factory WidgetEntity.scope({
    required WidgetEntityId id,
    required FixedScopeArgs args,
  }) = WidgetEntityScope;
  const factory WidgetEntity.q2_1({
    required WidgetEntityId id,
    required FixedQ2_1Args args,
  }) = WidgetEntityQ2_1;
  const factory WidgetEntity.q2_2({
    required WidgetEntityId id,
    required FixedQ2_2Args args,
  }) = WidgetEntityQ2_2;
  const factory WidgetEntity.q2_3({
    required WidgetEntityId id,
    required FixedQ2_3Args args,
  }) = WidgetEntityQ2_3;

  WidgetType get type => switch (this) {
    WidgetEntityRoot() => .root,
    WidgetEntityContainer() => .container,
    WidgetEntityText() => .text,
    WidgetEntityColumn() => .column,
    WidgetEntityRow() => .row,
    WidgetEntityExpanded() => .expanded,
    WidgetEntityCenter() => .center,
    WidgetEntityAlign() => .align,
    WidgetEntityScope() => .scope,
    WidgetEntityQ2_1() => .q2_1,
    WidgetEntityQ2_2() => .q2_2,
    WidgetEntityQ2_3() => .q2_3,
  };

  factory WidgetEntity.fromType(WidgetType type) => switch (type) {
    .root => .root(id: .create(), args: .initial),
    .container => .container(id: .create(), args: .initial),
    .text => .text(id: .create(), args: .initial),
    .column => .column(id: .create(), args: .initial),
    .row => .row(id: .create(), args: .initial),
    .expanded => .expanded(id: .create(), args: .initial),
    .center => .center(id: .create(), args: .initial),
    .align => .align(id: .create(), args: .initial),
    .scope => .scope(id: .create(), args: .initial),
    .q2_1 => .q2_1(id: .create(), args: .initial),
    .q2_2 => .q2_2(id: .create(), args: .initial),
    .q2_3 => .q2_3(id: .create(), args: .initial),
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
        .row => .row(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .expanded => .expanded(
          id: wrapper.id,
          args: .fromCommonArgs(wrapper.args),
        ),
        .center => .center(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .align => .align(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .scope => .scope(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .q2_1 => .q2_1(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .q2_2 => .q2_2(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
        .q2_3 => .q2_3(id: wrapper.id, args: .fromCommonArgs(wrapper.args)),
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
    WidgetEntityRow w => .new(id: id, type: .row, args: w.args.toCommonArgs()),
    WidgetEntityExpanded w => .new(
      id: id,
      type: type,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityCenter w => .new(
      id: id,
      type: .center,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityAlign w => .new(
      id: id,
      type: .align,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityScope w => .new(
      id: id,
      type: .scope,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityQ2_1 w => .new(
      id: id,
      type: .q2_1,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityQ2_2 w => .new(
      id: id,
      type: .q2_2,
      args: w.args.toCommonArgs(),
    ),
    WidgetEntityQ2_3 w => .new(
      id: id,
      type: .q2_3,
      args: w.args.toCommonArgs(),
    ),
  };

  factory WidgetEntity.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityFromJson(json);
}
