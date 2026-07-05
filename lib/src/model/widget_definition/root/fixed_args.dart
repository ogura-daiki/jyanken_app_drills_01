import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/root/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedRootArgs extends WidgetArgumentsDefinition<RootArg>
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
  Map<WidgetArg, dynamic> toCommonArgs() => {
    for (final key in RootArg.values) key.arg: getValue(key),
  };

  static const initial = FixedRootArgs();
  factory FixedRootArgs.fromCommonArgs(Map<WidgetArg, dynamic> args) {
    var result = initial;
    for (final key in RootArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedRootArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedRootArgsFromJson(json);
}
