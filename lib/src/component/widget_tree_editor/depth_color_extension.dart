import 'package:flutter/material.dart';

extension DepthColor on BuildContext {
  static const depthColors = [
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.blueAccent,
  ];
  static const mixRatio = 0.3;
  Color? depthColor(int depth) {
    return Color.lerp(
      Theme.of(this).colorScheme.surface,
      depthColors[depth % depthColors.length],
      0.3,
    );
  }
}
