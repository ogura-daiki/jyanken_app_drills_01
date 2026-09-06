import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/row/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedRowArgs extends WidgetArgumentsDefinition<RowArg>
    with _$FixedRowArgs {
  const FixedRowArgs._();
  const factory FixedRowArgs({
    @Default(CrossAxisAlignment.start) CrossAxisAlignment crossAxisAlignment,
    @Default([]) List<WidgetEntity> children,
  }) = _FixedRowArgs;

  @override
  dynamic getValue(RowArg key) => switch (key) {
    .crossAxisAlignment => crossAxisAlignment,
    .children => children,
  };
  @override
  FixedRowArgs setValue(RowArg key, dynamic value) => switch (key) {
    .crossAxisAlignment => copyWith(crossAxisAlignment: value),
    .children => copyWith(children: value),
  };
  @override
  Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
    for (final key in RowArg.values) key.arg: getValue(key),
  };

  static const initial = FixedRowArgs();
  factory FixedRowArgs.fromCommonArgs(Map<WidgetArgDefinition, dynamic> args) {
    var result = initial;
    for (final key in RowArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedRowArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedRowArgsFromJson(json);
}
