import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/column/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedColumnArgs extends WidgetArguments<ColumnArg>
    with _$FixedColumnArgs {
  const FixedColumnArgs._();
  const factory FixedColumnArgs({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(MainAxisSize.min) MainAxisSize mainAxisSize,
    @Default(CrossAxisAlignment.start) CrossAxisAlignment crossAxisAlignment,
    @Default(0.0) double spacing,
    @Default([]) List<WidgetEntity> children,
  }) = _FixedColumnArgs;

  @override
  dynamic getValue(ColumnArg key) => switch (key) {
    .mainAxisAlignment => mainAxisAlignment,
    .mainAxisSize => mainAxisSize,
    .crossAxisAlignment => crossAxisAlignment,
    .spacing => spacing,
    .children => children,
  };
  @override
  FixedColumnArgs setValue(ColumnArg key, dynamic value) => switch (key) {
    .mainAxisAlignment => copyWith(mainAxisAlignment: value),
    .mainAxisSize => copyWith(mainAxisSize: value),
    .crossAxisAlignment => copyWith(crossAxisAlignment: value),
    .spacing => copyWith(spacing: value),
    .children => copyWith(children: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in ColumnArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedColumnArgs();
  factory FixedColumnArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in ColumnArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedColumnArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedColumnArgsFromJson(json);
}
