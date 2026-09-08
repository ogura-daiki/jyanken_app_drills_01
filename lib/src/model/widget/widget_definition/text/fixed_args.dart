import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/text/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedTextArgs extends WidgetArguments<TextArg>
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
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in TextArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedTextArgs(text: "");
  factory FixedTextArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in TextArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedTextArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedTextArgsFromJson(json);
}
