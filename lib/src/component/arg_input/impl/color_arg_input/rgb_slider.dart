import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';

class RGBSlider extends StatelessWidget {
  final ColorWrapper color;
  final Function(ColorWrapper newColor) onChange;

  const RGBSlider({super.key, required this.color, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      children: [
        Slider(
          value: color.red,
          min: 0,
          max: 1,
          divisions: 256,
          thumbColor: Color.fromARGB(255, 255, 0, 0),
          activeColor: color.copyWith(blue: 0, green: 0).color,
          onChanged: (v) {
            onChange(color.copyWith(red: v));
          },
        ),
        Slider(
          value: color.green,
          min: 0,
          max: 1,
          divisions: 256,
          thumbColor: Color.fromARGB(255, 0, 255, 0),
          activeColor: color.copyWith(blue: 0, red: 0).color,
          onChanged: (v) {
            onChange(color.copyWith(green: v));
          },
        ),
        Slider(
          value: color.blue,
          min: 0,
          max: 1,
          divisions: 256,
          thumbColor: Color.fromARGB(255, 0, 0, 255),
          activeColor: color.copyWith(red: 0, green: 0).color,
          onChanged: (v) {
            onChange(color.copyWith(blue: v));
          },
        ),
      ],
    );
  }
}
