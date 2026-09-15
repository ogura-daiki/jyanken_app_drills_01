import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/expanded/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedExpandedArgs extends WidgetArguments<ExpandedArg>
    with _$FixedExpandedArgs {
  const FixedExpandedArgs._();
  const factory FixedExpandedArgs({
    @Default(1) int flex,
    @Default(null) WidgetEntity? child,
  }) = _FixedExpandedArgs;

  @override
  dynamic getValue(ExpandedArg key) => switch (key) {
    .flex => flex,
    .child => child,
  };
  @override
  FixedExpandedArgs setValue(ExpandedArg key, dynamic value) => switch (key) {
    .flex => copyWith(flex: value),
    .child => copyWith(child: value),
  };

  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in ExpandedArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  // @override
  // Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
  //   for (final key in ExpandedArg.values) key.arg: getValue(key),
  // };

  static const initial = FixedExpandedArgs();
  factory FixedExpandedArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in ExpandedArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedExpandedArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedExpandedArgsFromJson(json);
}
