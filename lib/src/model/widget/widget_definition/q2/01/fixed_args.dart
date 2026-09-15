import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/q2/01/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedQ2_1Args extends WidgetArguments<Q2_1Arg>
    with _$FixedQ2_1Args {
  const FixedQ2_1Args._();
  const factory FixedQ2_1Args({@Default("") String displayText}) =
      _FixedQ2_1Args;

  @override
  dynamic getValue(Q2_1Arg key) => switch (key) {
    .displayText => displayText,
  };
  @override
  FixedQ2_1Args setValue(Q2_1Arg key, dynamic value) => switch (key) {
    .displayText => copyWith(displayText: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in Q2_1Arg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedQ2_1Args();
  factory FixedQ2_1Args.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in Q2_1Arg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedQ2_1Args.fromJson(Map<String, dynamic> json) =>
      _$FixedQ2_1ArgsFromJson(json);
}
