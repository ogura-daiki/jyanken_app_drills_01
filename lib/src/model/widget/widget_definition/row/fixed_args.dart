import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/row/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedRowArgs extends WidgetArguments<RowArg>
    with _$FixedRowArgs {
  const FixedRowArgs._();
  const factory FixedRowArgs({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(MainAxisSize.min) MainAxisSize mainAxisSize,
    @Default(CrossAxisAlignment.start) CrossAxisAlignment crossAxisAlignment,
    @Default(0.0) double spacing,
    @Default([]) List<WidgetEntity> children,
  }) = _FixedRowArgs;

  @override
  dynamic getValue(RowArg key) => switch (key) {
    .mainAxisAlignment => mainAxisAlignment,
    .mainAxisSize => mainAxisSize,
    .crossAxisAlignment => crossAxisAlignment,
    .spacing => spacing,
    .children => children,
  };
  @override
  FixedRowArgs setValue(RowArg key, dynamic value) => switch (key) {
    .mainAxisAlignment => copyWith(mainAxisAlignment: value),
    .mainAxisSize => copyWith(mainAxisSize: value),
    .crossAxisAlignment => copyWith(crossAxisAlignment: value),
    .spacing => copyWith(spacing: value),
    .children => copyWith(children: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in RowArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedRowArgs();
  factory FixedRowArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in RowArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedRowArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedRowArgsFromJson(json);
}
