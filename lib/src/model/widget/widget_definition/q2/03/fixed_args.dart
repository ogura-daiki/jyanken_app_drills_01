// ignore_for_file: camel_case_types

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/q3_3/hands_result.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/03/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedQ2_3Args extends WidgetArguments<Q2_3Arg>
    with _$FixedQ2_3Args {
  const FixedQ2_3Args._();
  const factory FixedQ2_3Args({
    @Default(HandsResult()) HandsResult handsResult,
  }) = _FixedQ2_3Args;

  @override
  dynamic getValue(Q2_3Arg key) => switch (key) {
    .handsResult => handsResult
  };
  @override
  FixedQ2_3Args setValue(Q2_3Arg key, dynamic value) => switch (key) {
    .handsResult => copyWith(handsResult: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in Q2_3Arg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedQ2_3Args();
  factory FixedQ2_3Args.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in Q2_3Arg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedQ2_3Args.fromJson(Map<String, dynamic> json) =>
      _$FixedQ2_3ArgsFromJson(json);
}
