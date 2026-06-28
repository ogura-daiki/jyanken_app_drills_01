import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedCenterArgs with _$FixedCenterArgs {
  const FixedCenterArgs._();
  const factory FixedCenterArgs({@Default(null) WidgetEntity? child}) =
      _FixedCenterArgs;

  static const initial = FixedCenterArgs();

  dynamic getValue(CenterArg key) => switch (key) {
    .child => child,
  };
  FixedCenterArgs setValue(CenterArg key, dynamic value) => switch (key) {
    .child => copyWith(child: value),
  };

  Map<WidgetArg, dynamic> toCommonArgs() => {
    for (final key in CenterArg.values) key.toArg(): getValue(key),
  };

  factory FixedCenterArgs.fromCommonArgs(Map<WidgetArg, dynamic> args) {
    var result = initial;
    for (final key in CenterArg.values) {
      result = result.setValue(key, args[key.toArg()]);
    }
    return result;
  }

  factory FixedCenterArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedCenterArgsFromJson(json);
}
