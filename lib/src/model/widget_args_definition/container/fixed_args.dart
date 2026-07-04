import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/container/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedContainerArgs with _$FixedContainerArgs {
  const FixedContainerArgs._();
  const factory FixedContainerArgs({
    @Default(null) double? width,
    @Default(null) double? height,
    @Default(null) ColorWrapper? color,
    @Default(null) WidgetEntity? child,
  }) = _FixedContainerArgs;

  static const initial = FixedContainerArgs();

  dynamic getValue(ContainerArg key) => switch (key) {
    .width => width,
    .height => height,
    .color => color,
    .child => child,
  };
  FixedContainerArgs setValue(ContainerArg key, dynamic value) => switch (key) {
    .width => copyWith(width: value),
    .height => copyWith(height: value),
    .color => copyWith(color: value),
    .child => copyWith(child: value),
  };

  Map<WidgetArg, dynamic> toCommonArgs() => {
    for (final key in ContainerArg.values) key.arg: getValue(key),
  };

  factory FixedContainerArgs.fromCommonArgs(Map<WidgetArg, dynamic> args) {
    var result = initial;
    for (final key in ContainerArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedContainerArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedContainerArgsFromJson(json);
}
