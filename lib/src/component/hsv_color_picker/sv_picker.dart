import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/color_picker/transparent_repeat_bg.dart';
import 'package:jyanken_app_drills/src/component/xy_slider/xy_slider.dart';
import 'package:jyanken_app_drills/src/core/hsv_ext.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

class SvPicker extends HookWidget {
  final double hue;
  final ColorWrapper? value;
  final void Function(ColorWrapper newColor) onChange;

  const SvPicker({
    super.key,
    required this.value,
    required this.onChange,
    required this.hue,
  });

  @override
  Widget build(BuildContext context) {
    final hsv = useMemoized(
      () => value?.hsv ?? HSVColor.fromAHSV(1, hue, 1, 1),
      [value],
    );
    final x = useState(hsv.saturation);
    final y = useState(1 - hsv.value);
    return Stack(
      fit: .expand,
      children: [
        TransparentRepeatBg(tileSize: 8),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withAlpha((hsv.alpha * 255).round()),
                HSVColor.fromAHSV(hsv.alpha, hue, 1, 1).toColor(),
              ],
              begin: .centerLeft,
              end: .centerRight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withAlpha((hsv.alpha * 255).round()),
                ],
                begin: .topCenter,
                end: .bottomCenter,
              ),
            ),
            child: XySlider(
              position: .new(x.value, y.value),
              onChange: (newPos) {
                x.value = newPos.dx.clamp(0, 1);
                y.value = newPos.dy.clamp(0, 1);
                onChange(
                  ColorWrapper.fromColor(
                    hsv
                        .withSaturation(x.value)
                        .withValue(1 - y.value)
                        .toColor(),
                  ),
                );
              },
              thumb: PreferredSize(
                preferredSize: .square(16),
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: .circle,
                    gradient: RadialGradient(
                      colors: [
                        hsv.toColor(),
                        hsv.toColor(),
                        Colors.black,
                        Colors.black,
                      ],
                      stops: [0, 0.7, 0.7, 1],
                    ),
                    border: .all(width: 1, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
