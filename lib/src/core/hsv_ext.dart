import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

extension ColorWrapperFromHSV on ColorWrapper {
  HSVColor get hsv {
    return HSVColor.fromColor(color);
  }
}
