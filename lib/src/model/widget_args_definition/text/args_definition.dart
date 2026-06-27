import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/keys.dart';
part 'args_definition.freezed.dart';
part 'args_definition.g.dart';

@freezed
sealed class TextArgsDefinition with _$TextArgsDefinition {
  const TextArgsDefinition._();
  const factory TextArgsDefinition.text({required String value}) =
      TextArgsDefinitionText;
  const factory TextArgsDefinition.fontSize({required double value}) =
      TextArgsDefinitionFontSize;

  TextArgsKey get key => switch (this) {
    TextArgsDefinitionText() => .text,
    TextArgsDefinitionFontSize() => .fontSize,
  };

  static TextArgsDefinition fromKV(String key, dynamic value) =>
      switch (TextArgsKey.fromName(key)) {
        .text => .text(value: value),
        .fontSize => .fontSize(value: value),
      };

  static List<TextArgsDefinition> fromFixed(FixedTextArgs fixed) => [
    .text(value: fixed.text),
    .fontSize(value: fixed.fontSize),
  ];

  factory TextArgsDefinition.fromJson(Map<String, dynamic> json) =>
      _$TextArgsDefinitionFromJson(json);
}
