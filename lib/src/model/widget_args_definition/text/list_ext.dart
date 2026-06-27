import 'package:jyanken_app_drills/src/model/widget_args_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';

extension TextArgsListExt on List<TextArgsDefinition> {
  FixedTextArgs get fixed {
    FixedTextArgs result = .initial;
    for (final i in this) {
      result = switch (i) {
        TextArgsDefinitionText(:final value) => result.copyWith(text: value),
        TextArgsDefinitionFontSize(:final value) => result.copyWith(
          fontSize: value,
        ),
      };
    }
    return result;
  }

  WidgetArgsWrapper toArgs() => .new(
    type: .text,
    args: Map.fromEntries(map((e) => .new(e.key.toArg(), e.value))),
  );
}
