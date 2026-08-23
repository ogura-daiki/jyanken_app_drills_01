import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/font_weight/font_weight_definition.dart';
import 'package:jyanken_app_drills/src/model/type/text_decoration/text_decoration_definition.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/built_in_text_style.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/get_built_in_text_style.dart';
part 'text_style_wrapper.freezed.dart';
part 'text_style_wrapper.g.dart';

@freezed
abstract class TextStyleWrapper with _$TextStyleWrapper {
  const TextStyleWrapper._();
  const factory TextStyleWrapper({
    BuiltInTextStyle? baseStyle,
    ColorWrapper? color,
    ColorWrapper? backgroundColor,
    double? fontSize,
    FontWeightDefinition? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    double? height,
    @Default({}) Set<TextDecorationDefinition> decoration,
    ColorWrapper? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow? overflow,
  }) = _TextStyleWrapper;

  TextStyle toTextStyle(BuildContext context) {
    final base = baseStyle?.getTextStyle(context) ?? TextStyle();
    return base.copyWith(
      color: color?.color,
      backgroundColor: backgroundColor?.color,
      fontSize: fontSize,
      fontWeight: fontWeight?.toFontWeight(),
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
      decoration: .combine(decoration.map((e) => e.decoration).toList()),
      decorationColor: decorationColor?.color,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      overflow: overflow,
    );
  }

  factory TextStyleWrapper.fromJson(Map<String, dynamic> json) =>
      _$TextStyleWrapperFromJson(json);
}
