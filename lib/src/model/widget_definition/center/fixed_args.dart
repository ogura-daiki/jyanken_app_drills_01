import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/center/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedCenterArgs extends WidgetArgumentsDefinition<CenterArg>
    with _$FixedCenterArgs {
  const FixedCenterArgs._();
  const factory FixedCenterArgs({@Default(null) WidgetEntity? child}) =
      _FixedCenterArgs;

  @override
  dynamic getValue(CenterArg key) => switch (key) {
    .child => child,
  };
  @override
  FixedCenterArgs setValue(CenterArg key, dynamic value) => switch (key) {
    .child => copyWith(child: value),
  };
  @override
  Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
    for (final key in CenterArg.values) key.arg: getValue(key),
  };

  static const initial = FixedCenterArgs();
  factory FixedCenterArgs.fromCommonArgs(
    Map<WidgetArgDefinition, dynamic> args,
  ) {
    var result = initial;
    for (final key in CenterArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedCenterArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedCenterArgsFromJson(json);
}
