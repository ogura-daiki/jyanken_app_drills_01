import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/hsv_color_picker/hsv_color_picker.dart';
import 'package:jyanken_app_drills/src/component/color_picker/theme_color_picker.dart';
import 'package:jyanken_app_drills/src/component/color_picker/transparent_repeat_bg.dart';
import 'package:jyanken_app_drills/src/core/line_height_ext.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

class ColorPicker extends HookWidget {
  final ColorWrapper? initialColor;
  final void Function(ColorWrapper? newColor) onChange;

  const ColorPicker({
    super.key,
    required this.initialColor,
    required this.onChange,
  });
  @override
  Widget build(BuildContext context) {
    final currentColor = useState<ColorWrapper?>(initialColor);
    final tabController = useTabController(initialLength: 2);
    final selection = useState(0);
    return Material(
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          TabBar(
            controller: tabController,
            isScrollable: true,
            onTap: (value) {
              selection.value = value;
            },
            tabs: [
              Tab(text: "自由選択"),
              Tab(text: "テーマカラー"),
            ],
          ),
          SizedBox(
            height: kToolbarHeight,
            child: Stack(
              fit: .passthrough,
              children: [
                Row(
                  mainAxisSize: .max,
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .stretch,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: _colorPreview(color: initialColor?.color),
                    ),
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: _colorPreview(color: currentColor.value?.color),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: ColorScheme.of(context).surfaceContainer,
                    ),
                    child: Padding(
                      padding: const .all(2.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: ColorScheme.of(context).onSurface,
                        size: TextTheme.of(context).labelMedium!.lineHeight(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: [
                HsvColorPicker(
                  value: currentColor.value,
                  onChange: (newColor) {
                    currentColor.value = newColor;
                  },
                ),
                ThemeColorPicker(
                  onSelect: (newColor) {
                    currentColor.value = newColor;
                  },
                ),
              ][selection.value],
            ),
          ),
          Padding(
            padding: const .symmetric(horizontal: 8, vertical: 8),
            child: Row(
              spacing: 8,
              crossAxisAlignment: .center,
              children: [
                IconButton.filledTonal(
                  onPressed: () {
                    currentColor.value = null;
                  },
                  icon: Icon(Icons.delete),
                  iconSize: TextTheme.of(context).bodyMedium!.lineHeight(),
                  padding: .zero,
                  style: ButtonStyle(
                    minimumSize: .all(
                      .square(
                        TextTheme.of(context).bodyMedium!.lineHeight() * 1.6,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {
                      onChange(currentColor.value);
                    },
                    label: Text("決定"),
                    icon: Icon(
                      Icons.check,
                      size: TextTheme.of(context).bodyMedium!.lineHeight(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _colorPreview({Color? color}) {
    return Stack(
      fit: .expand,
      children: [
        if (color != null) const TransparentRepeatBg(tileSize: 8),
        Container(
          decoration: BoxDecoration(color: color ?? Colors.grey),
          child: switch (color) {
            null => Center(child: Text("null")),
            _ => null,
          },
        ),
      ],
    );
  }
}

@Preview()
Widget previewColorPicker() {
  return MaterialApp(
    home: SizedBox(
      height: 400,
      child: ColorPicker(initialColor: null, onChange: (_) {}),
    ),
  );
}
