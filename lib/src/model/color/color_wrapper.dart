import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'color_wrapper.freezed.dart';
part 'color_wrapper.g.dart';

@freezed
abstract class ColorWrapper with _$ColorWrapper {
  const ColorWrapper._();
  const factory ColorWrapper({
    required double red,
    required double green,
    required double blue,
    required double alpha,
  }) = _ColorWrapper;

  static ColorWrapper fromColor(Color color) {
    return ColorWrapper(
      red: color.r,
      green: color.g,
      blue: color.b,
      alpha: color.a,
    );
  }

  Color get color => .fromARGB(
    (alpha * 255).round(),
    (red * 255).round(),
    (green * 255).round(),
    (blue * 255).round(),
  );

  factory ColorWrapper.fromJson(Map<String, dynamic> json) =>
      _$ColorWrapperFromJson(json);
}
