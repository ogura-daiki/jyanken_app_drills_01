import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/color_picker/transparent_repeat_bg.dart';
import 'package:jyanken_app_drills/src/component/hsv_color_picker/sv_picker.dart';
import 'package:jyanken_app_drills/src/component/simple_slider/simple_slider.dart';
import 'package:jyanken_app_drills/src/core/hsv_ext.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

class HsvColorPicker extends StatelessWidget {
  final ColorWrapper? value;
  final void Function(ColorWrapper newColor) onChange;

  const HsvColorPicker({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final value =
        this.value ??
        ColorWrapper.fromColor(HSVColor.fromAHSV(1, 0, 1, 1).toColor());

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8,
      children: [
        AspectRatio(
          aspectRatio: 1.5,
          child: SvPicker(
            value: value,
            onChange: (newColor) {
              onChange(newColor);
            },
          ),
        ),
        SimpleSlider(
          value: value.hsv.hue,
          min: 0,
          max: 360,
          onChange: (newVal) {
            onChange(
              ColorWrapper.fromColor(value.hsv.withHue(newVal).toColor()),
            );
          },
          railBackGround: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: List.generate(
                  13,
                  (i) => HSVColor.fromAHSV(1, i * (360 / 12), 1, 1).toColor(),
                ),
              ),
            ),
          ),
          thumb: PreferredSize(
            preferredSize: Size(8, 32),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: .all(.circular(2)),
                color: value.hsv
                    .withSaturation(1)
                    .withValue(1)
                    .withAlpha(1)
                    .toColor(),
                border: .all(width: 1, color: Colors.white),
              ),
            ),
          ),
        ),
        SimpleSlider(
          value: value.alpha,
          min: 0,
          max: 1,
          onChange: (newVal) {
            onChange(
              ColorWrapper.fromColor(value.hsv.withAlpha(newVal).toColor()),
            );
          },
          railBackGround: Stack(
            fit: .expand,
            children: [
              TransparentRepeatBg(tileSize: 8),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      value.hsv.withAlpha(0).toColor(),
                      value.hsv.withAlpha(1).toColor(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          thumb: PreferredSize(
            preferredSize: Size(8, 32),
            child: Stack(
              fit: .expand,
              children: [
                TransparentRepeatBg(tileSize: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: .all(.circular(2)),
                    color: value.color,
                    border: .all(width: 1, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

@Preview(name: "previewHSVColorPicker")
Widget previewHSVColorPicker() {
  return MaterialApp(
    home: SizedBox(
      width: 200,
      child: HookBuilder(
        builder: (context) {
          final color = useState<ColorWrapper?>(null);
          return Column(
            crossAxisAlignment: .stretch,
            mainAxisSize: .min,
            children: [
              Container(
                color: color.value?.color,
                child: SizedBox(height: 100),
              ),
              HsvColorPicker(
                value: color.value,
                onChange: (newColor) {
                  color.value = newColor;
                },
              ),
            ],
          );
        },
      ),
    ),
  );
}
