import 'package:flutter/widget_previews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/rgb_slider.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/theme_color_picker.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/typed_arg.dart';

class ColorEditor extends HookWidget
    implements ArgInputValueWidgetInterface<ColorWrapper> {
  final bool nullable;
  
  @override
  TypedArg<ColorWrapper> get type => .nullable(null);
  @override
  final ColorWrapper? value;
  @override
  final void Function(ColorWrapper? newVal) onChange;

  const ColorEditor({
    super.key,
    required this.nullable,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final currentColor = useState(value);
    final currentTab = useState<int>(0);
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      spacing: 8,
      children: [
        Text("設定中の色"),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: value?.color ?? Colors.black,
            border: .all(
              width: 1,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            borderRadius: .circular(8),
          ),
          clipBehavior: .antiAliasWithSaveLayer,
          child: switch (value) {
            Null() => Center(
              child: Text("未選択", style: .new(color: Colors.white54)),
            ),
            ColorWrapper() => null,
          },
        ),
        Text("色の変更"),
        Row(
          spacing: 8,
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: currentColor.value?.color ?? Colors.black,
                  border: .all(
                    width: 1,
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                  borderRadius: .circular(8),
                ),
                clipBehavior: .antiAliasWithSaveLayer,
                child: switch (value) {
                  Null() => Center(
                    child: Text("未選択", style: .new(color: Colors.white54)),
                  ),
                  ColorWrapper() => null,
                },
              ),
            ),
            IconButton.filled(
              onPressed: () {
                onChange(currentColor.value);
              },
              icon: Icon(Icons.check),
            ),
            IconButton.filledTonal(
              onPressed: () {
                onChange(null);
                currentColor.value = null;
              },
              icon: Icon(Icons.delete_forever),
            ),
          ],
        ),
        SegmentedButton<int>(
          segments: [
            ButtonSegment(value: 0, label: Text("カスタム")),
            ButtonSegment(value: 1, label: Text("テーマ")),
          ],
          onSelectionChanged: (idx) {
            idx = {...idx};
            idx.remove(currentTab.value);
            currentTab.value = idx.firstOrNull ?? currentTab.value;
          },
          selected: {currentTab.value},
        ),
        Stack(
          children:
              [
                    RGBSlider(
                      color: currentColor.value ?? .fromColor(Colors.black),
                      onChange: (newColor) {
                        currentColor.value = newColor;
                      },
                    ),
                    SizedBox(
                      height: 250,
                      child: ThemeColorPicker(
                        onSelect: (newColor) => currentColor.value = newColor,
                      ),
                    ),
                  ].indexed
                  .map(
                    (e) => Offstage(
                      offstage: currentTab.value != e.$1,
                      child: e.$2,
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}

@Preview(name: 'My Sample Text')
Widget previewColorEditor() {
  return Dialog.fullscreen(
    child: HookBuilder(
      builder: (context) {
        final color = useState<ColorWrapper?>(.fromColor(Colors.amber));
        return ColorEditor(
          nullable: true,
          value: color.value,
          onChange: (newColor) {
            color.value = newColor;
          },
        );
      },
    ),
  );
}
