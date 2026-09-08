import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/color_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/enum_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/text_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/text_style_arg_input/text_style_preview.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/type/font_weight/font_weight_definition.dart';
import 'package:jyanken_app_drills/src/model/type/text_decoration/text_decoration_definition.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/built_in_text_style.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';

class TextStyleArgInput extends StatelessWidget
    implements ArgInputValueWidgetInterface<TextStyleWrapper> {
  @override
  final void Function(TextStyleWrapper? newVal) onChange;
  @override
  final TextStyleWrapper? value;
  @override
  final bool nullable;
  @override
  final TextStyleWrapper defaultValue;

  const TextStyleArgInput._({
    super.key,
    required this.onChange,
    required this.value,
    required this.nullable,
    required this.defaultValue,
  });

  factory TextStyleArgInput({
    Key? key,
    required TextStyleWrapper? value,
    required void Function(TextStyleWrapper? newVal) onChange,
  }) => TextStyleArgInput._(
    key: key,
    onChange: onChange,
    value: value,
    nullable: true,
    defaultValue: .new(),
  );

  @override
  Widget build(BuildContext context) {
    final value = this.value ?? defaultValue;
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      spacing: 8,
      children: [
        Text("スタイルのプレビュー"),
        TextStylePreview(style: value.toTextStyle(context)),
        Text("ベースにするスタイル"),
        EnumBaseArgInput<BuiltInTextStyle>(
          onChange: (newVal) {
            onChange(value.copyWith(baseStyle: newVal));
          },
          nullable: true,
          defaultValue: null,
          value: value.baseStyle,
          items: BuiltInTextStyle.values,
        ),
        Text("文字色"),
        ColorEditor(
          nullable: true,
          defaultValue: null,
          value: value.color,
          onChange: (newVal) {
            onChange(value.copyWith(color: newVal));
          },
        ),
        Text("背景色"),
        ColorEditor(
          nullable: true,
          defaultValue: null,
          value: value.backgroundColor,
          onChange: (newVal) {
            onChange(value.copyWith(backgroundColor: newVal));
          },
        ),
        Text("文字サイズ"),
        doubleInput(
          value: value.fontSize,
          onChange: (newVal) {
            onChange(value.copyWith(fontSize: newVal));
          },
        ),
        Text("文字の太さ"),
        EnumBaseArgInput<FontWeightDefinition>(
          onChange: (newVal) {
            onChange(value.copyWith(fontWeight: newVal));
          },
          defaultValue: null,
          nullable: true,
          value: value.fontWeight,
          items: FontWeightDefinition.values,
        ),
        Text("文字タイプ"),
        EnumBaseArgInput<FontStyle>(
          onChange: (newVal) {
            onChange(value.copyWith(fontStyle: newVal));
          },
          defaultValue: null,
          nullable: true,
          value: value.fontStyle,
          items: FontStyle.values,
        ),
        Text("字間"),
        doubleInput(
          value: value.letterSpacing,
          onChange: (newVal) {
            onChange(value.copyWith(letterSpacing: newVal));
          },
        ),
        Text("単語同士の間隔"),
        doubleInput(
          value: value.wordSpacing,
          onChange: (newVal) {
            onChange(value.copyWith(wordSpacing: newVal));
          },
        ),
        Text("行の高さ"),
        doubleInput(
          value: value.height,
          onChange: (newVal) {
            onChange(value.copyWith(height: newVal));
          },
        ),
        Text("装飾線"),
        Column(
          crossAxisAlignment: .stretch,
          mainAxisSize: .min,
          children: [
            for (final td in TextDecorationDefinition.values)
              CheckboxListTile(
                value: value.decoration.contains(td),
                title: Text(td.name),
                onChanged: (selection) {
                  selection ??= false;
                  final decoration = {...value.decoration};
                  if (selection) {
                    if (td == .none) {
                      decoration.clear();
                    } else {
                      decoration.remove(TextDecorationDefinition.none);
                    }
                    decoration.add(td);
                  } else {
                    decoration.remove(td);
                  }
                  onChange(value.copyWith(decoration: decoration));
                },
              ),
          ],
        ),
        Text("装飾線の色"),
        ColorEditor(
          nullable: true,
          defaultValue: null,
          value: value.decorationColor,
          onChange: (newVal) {
            onChange(value.copyWith(decorationColor: newVal));
          },
        ),
        Text("装飾線のスタイル"),
        EnumBaseArgInput<TextDecorationStyle>(
          onChange: (newVal) {
            onChange(value.copyWith(decorationStyle: newVal));
          },
          defaultValue: null,
          nullable: true,
          value: value.decorationStyle,
          items: TextDecorationStyle.values,
        ),
        Text("装飾線の太さ"),
        doubleInput(
          value: value.decorationThickness,
          onChange: (newVal) {
            onChange(value.copyWith(decorationThickness: newVal));
          },
        ),
        Text("テキストの省略"),
        EnumBaseArgInput<TextOverflow>(
          onChange: (newVal) {
            onChange(value.copyWith(overflow: newVal));
          },
          defaultValue: null,
          nullable: true,
          value: value.overflow,
          items: TextOverflow.values,
        ),
      ],
    );
  }

  Widget doubleInput({
    required double? value,
    required void Function(double?) onChange,
  }) {
    return TextBaseArgInput<double>(
      defaultValue: null,
      nullable: true,
      value: value,
      inputFormatters: [],
      mapFrom: (val) => val?.let(double.tryParse),
      mapTo: (val) => val?.toString() ?? "",
      onChange: (newVal) {
        onChange(newVal);
      },
    );
  }
}

@Preview(name: "previewTextStyleArgInput")
Widget previewTextStyleArgInput() {
  return Dialog.fullscreen(
    child: HookBuilder(
      builder: (context) {
        final style = useState<TextStyleWrapper?>(
          .new(color: .fromColor(Colors.amber)),
        );
        return TextStyleArgInput(
          value: style.value,
          onChange: (newVal) {
            style.value = newVal;
          },
        );
      },
    ),
  );
}
