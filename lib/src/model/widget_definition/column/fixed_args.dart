import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/column/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedColumnArgs extends WidgetArgumentsDefinition<ColumnArg>
    with _$FixedColumnArgs {
  const FixedColumnArgs._();
  const factory FixedColumnArgs({
    @Default(CrossAxisAlignment.start) CrossAxisAlignment crossAxisAlignment,
    @Default([]) List<WidgetEntity> children,
  }) = _FixedColumnArgs;

  @override
  dynamic getValue(ColumnArg key) => switch (key) {
    .crossAxisAlignment => crossAxisAlignment,
    .children => children,
  };
  @override
  FixedColumnArgs setValue(ColumnArg key, dynamic value) => switch (key) {
    .crossAxisAlignment => copyWith(crossAxisAlignment: value),
    .children => copyWith(children: value),
  };
  @override
  Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
    for (final key in ColumnArg.values) key.arg: getValue(key),
  };

  static const initial = FixedColumnArgs();
  factory FixedColumnArgs.fromCommonArgs(
    Map<WidgetArgDefinition, dynamic> args,
  ) {
    var result = initial;
    for (final key in ColumnArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedColumnArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedColumnArgsFromJson(json);
}
