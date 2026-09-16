// ignore_for_file: camel_case_types

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/02/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedQ2_2Args extends WidgetArguments<Q2_2Arg>
    with _$FixedQ2_2Args {
  const FixedQ2_2Args._();
  const factory FixedQ2_2Args({@Default([]) List<String> hands}) =
      _FixedQ2_2Args;

  @override
  dynamic getValue(Q2_2Arg key) => switch (key) {
    .hands => hands,
  };
  @override
  FixedQ2_2Args setValue(Q2_2Arg key, dynamic value) => switch (key) {
    .hands => copyWith(hands: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in Q2_2Arg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedQ2_2Args();
  factory FixedQ2_2Args.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in Q2_2Arg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedQ2_2Args.fromJson(Map<String, dynamic> json) =>
      _$FixedQ2_2ArgsFromJson(json);
}
