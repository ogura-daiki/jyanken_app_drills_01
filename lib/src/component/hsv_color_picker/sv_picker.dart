import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/xy_slider/xy_slider.dart';
import 'package:jyanken_app_drills/src/core/hsv_ext.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

class SvPicker extends HookWidget {
  final ColorWrapper? value;
  final void Function(ColorWrapper newColor) onChange;

  const SvPicker({super.key, required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    final value =
        this.value ??
        ColorWrapper.fromColor(HSVColor.fromAHSV(1, 0, 1, 1).toColor());
    final hsv = useMemoized(() => value.hsv, [value]);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, hsv.withSaturation(1).withValue(1).toColor()],
          begin: .centerLeft,
          end: .centerRight,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: .topCenter,
            end: .bottomCenter,
          ),
        ),
        child: XySlider(
          position: .new(hsv.saturation, 1 - hsv.value),
          onChange: (newPos) {
            onChange(
              ColorWrapper.fromColor(
                hsv
                    .withSaturation(newPos.dx)
                    .withValue(1 - newPos.dy)
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
                    value.color,
                    value.color,
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
    );
  }
}
