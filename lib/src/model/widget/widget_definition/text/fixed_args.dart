import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/text/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/widget_arg_definition.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedTextArgs extends WidgetArgumentsDefinition<TextArg>
    with _$FixedTextArgs {
  const FixedTextArgs._();
  const factory FixedTextArgs({
    required String text,
    @Default(null) TextStyleWrapper? style,
  }) = _FixedTextArgs;

  @override
  dynamic getValue(TextArg key) => switch (key) {
    .text => text,
    .style => style,
  };
  @override
  FixedTextArgs setValue(TextArg key, dynamic value) => switch (key) {
    .text => copyWith(text: value),
    .style => copyWith(style: value),
  };
  @override
  Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
    for (final key in TextArg.values) key.arg: getValue(key),
  };

  static const initial = FixedTextArgs(text: "");
  factory FixedTextArgs.fromCommonArgs(Map<WidgetArgDefinition, dynamic> args) {
    var result = initial;
    for (final key in TextArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedTextArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedTextArgsFromJson(json);
}
