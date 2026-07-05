import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/text/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedTextArgs extends WidgetArgumentsDefinition<TextArg>
    with _$FixedTextArgs {
  const FixedTextArgs._();
  const factory FixedTextArgs({
    required String text,
    @Default(18.0) double fontSize,
    @Default(null) ColorWrapper? color,
  }) = _FixedTextArgs;

  @override
  dynamic getValue(TextArg key) => switch (key) {
    .text => text,
    .fontSize => fontSize,
    .color => color,
  };
  @override
  FixedTextArgs setValue(TextArg key, dynamic value) => switch (key) {
    .text => copyWith(text: value),
    .fontSize => copyWith(fontSize: value),
    .color => copyWith(color: value),
  };
  @override
  Map<WidgetArg, dynamic> toCommonArgs() => {
    for (final key in TextArg.values) key.arg: getValue(key),
  };

  static const initial = FixedTextArgs(text: "");
  factory FixedTextArgs.fromCommonArgs(Map<WidgetArg, dynamic> args) {
    var result = initial;
    for (final key in TextArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedTextArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedTextArgsFromJson(json);
}
