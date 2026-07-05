import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/container/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedContainerArgs
    extends WidgetArgumentsDefinition<ContainerArg>
    with _$FixedContainerArgs {
  const FixedContainerArgs._();
  const factory FixedContainerArgs({
    @Default(null) double? width,
    @Default(null) double? height,
    @Default(null) ColorWrapper? color,
    @Default(null) WidgetEntity? child,
  }) = _FixedContainerArgs;

  @override
  dynamic getValue(ContainerArg key) => switch (key) {
    .width => width,
    .height => height,
    .color => color,
    .child => child,
  };
  @override
  FixedContainerArgs setValue(ContainerArg key, dynamic value) => switch (key) {
    .width => copyWith(width: value),
    .height => copyWith(height: value),
    .color => copyWith(color: value),
    .child => copyWith(child: value),
  };
  @override
  Map<WidgetArg, dynamic> toCommonArgs() => {
    for (final key in ContainerArg.values) key.arg: getValue(key),
  };

  static const initial = FixedContainerArgs();
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
