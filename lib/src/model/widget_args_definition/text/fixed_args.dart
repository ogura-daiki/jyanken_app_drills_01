import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedTextArgs with _$FixedTextArgs {
  const FixedTextArgs._();
  const factory FixedTextArgs({
    required String text,
    @Default(18.0) double fontSize,
  }) = _FixedTextArgs;

  static const initial = FixedTextArgs(text: "");

  dynamic getValue(TextArg key) => switch (key) {
    .text => text,
    .fontSize => fontSize,
  };
  FixedTextArgs setValue(TextArg key, dynamic value) => switch (key) {
    .text => copyWith(text: value),
    .fontSize => copyWith(fontSize: value),
  };

  WidgetArgsWrapper toWrapper() => .new(
    type: .text,
    args: {for (final key in TextArg.values) key.toArg(): getValue(key)},
  );
  factory FixedTextArgs.fromWrapper(WidgetArgsWrapper value) {
    var result = initial;
    for (final key in TextArg.values) {
      result = initial.setValue(key, value.args[key.toArg()]);
    }
    return result;
  }

  factory FixedTextArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedTextArgsFromJson(json);
}
