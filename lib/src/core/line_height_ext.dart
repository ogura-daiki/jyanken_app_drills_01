import 'package:flutter/material.dart';

extension LineHeightExt on TextStyle {
  double lineHeight({double fontSize = 18, double height = 1.3}) =>
      (this.fontSize ?? fontSize) * (this.height ?? height);
}
