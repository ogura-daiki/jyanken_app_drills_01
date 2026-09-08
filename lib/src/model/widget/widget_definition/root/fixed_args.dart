import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/root/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedRootArgs extends WidgetArguments<RootArg>
    with _$FixedRootArgs {
  const FixedRootArgs._();
  const factory FixedRootArgs({@Default(null) WidgetEntity? child}) =
      _FixedRootArgs;

  @override
  dynamic getValue(RootArg key) => switch (key) {
    .child => child,
  };
  @override
  FixedRootArgs setValue(RootArg key, dynamic value) => switch (key) {
    .child => copyWith(child: value),
  };
  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in RootArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedRootArgs();
  factory FixedRootArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in RootArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedRootArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedRootArgsFromJson(json);
}
