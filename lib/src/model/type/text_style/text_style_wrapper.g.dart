// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextStyleWrapper _$TextStyleWrapperFromJson(
  Map<String, dynamic> json,
) => _TextStyleWrapper(
  baseStyle: $enumDecodeNullable(_$BuiltInTextStyleEnumMap, json['baseStyle']),
  color: json['color'] == null
      ? null
      : ColorWrapper.fromJson(json['color'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] == null
      ? null
      : ColorWrapper.fromJson(json['backgroundColor'] as Map<String, dynamic>),
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  fontWeight: $enumDecodeNullable(
    _$FontWeightDefinitionEnumMap,
    json['fontWeight'],
  ),
  fontStyle: $enumDecodeNullable(_$FontStyleEnumMap, json['fontStyle']),
  letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
  wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  decoration:
      (json['decoration'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TextDecorationDefinitionEnumMap, e))
          .toSet() ??
      const {},
  decorationColor: json['decorationColor'] == null
      ? null
      : ColorWrapper.fromJson(json['decorationColor'] as Map<String, dynamic>),
  decorationStyle: $enumDecodeNullable(
    _$TextDecorationStyleEnumMap,
    json['decorationStyle'],
  ),
  decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
  overflow: $enumDecodeNullable(_$TextOverflowEnumMap, json['overflow']),
);

Map<String, dynamic> _$TextStyleWrapperToJson(_TextStyleWrapper instance) =>
    <String, dynamic>{
      'baseStyle': _$BuiltInTextStyleEnumMap[instance.baseStyle],
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'fontSize': instance.fontSize,
      'fontWeight': _$FontWeightDefinitionEnumMap[instance.fontWeight],
      'fontStyle': _$FontStyleEnumMap[instance.fontStyle],
      'letterSpacing': instance.letterSpacing,
      'wordSpacing': instance.wordSpacing,
      'height': instance.height,
      'decoration': instance.decoration
          .map((e) => _$TextDecorationDefinitionEnumMap[e]!)
          .toList(),
      'decorationColor': instance.decorationColor,
      'decorationStyle': _$TextDecorationStyleEnumMap[instance.decorationStyle],
      'decorationThickness': instance.decorationThickness,
      'overflow': _$TextOverflowEnumMap[instance.overflow],
    };

const _$BuiltInTextStyleEnumMap = {
  BuiltInTextStyle.displayLarge: 'displayLarge',
  BuiltInTextStyle.displayMedium: 'displayMedium',
  BuiltInTextStyle.displaySmall: 'displaySmall',
  BuiltInTextStyle.headlineLarge: 'headlineLarge',
  BuiltInTextStyle.headlineMedium: 'headlineMedium',
  BuiltInTextStyle.headlineSmall: 'headlineSmall',
  BuiltInTextStyle.titleLarge: 'titleLarge',
  BuiltInTextStyle.titleMedium: 'titleMedium',
  BuiltInTextStyle.titleSmall: 'titleSmall',
  BuiltInTextStyle.bodyLarge: 'bodyLarge',
  BuiltInTextStyle.bodyMedium: 'bodyMedium',
  BuiltInTextStyle.bodySmall: 'bodySmall',
  BuiltInTextStyle.labelLarge: 'labelLarge',
  BuiltInTextStyle.labelMedium: 'labelMedium',
  BuiltInTextStyle.labelSmall: 'labelSmall',
};

const _$FontWeightDefinitionEnumMap = {
  FontWeightDefinition.normal: 'normal',
  FontWeightDefinition.bold: 'bold',
  FontWeightDefinition.w100: 'w100',
  FontWeightDefinition.w200: 'w200',
  FontWeightDefinition.w300: 'w300',
  FontWeightDefinition.w400: 'w400',
  FontWeightDefinition.w500: 'w500',
  FontWeightDefinition.w600: 'w600',
  FontWeightDefinition.w700: 'w700',
  FontWeightDefinition.w800: 'w800',
  FontWeightDefinition.w900: 'w900',
};

const _$FontStyleEnumMap = {
  FontStyle.normal: 'normal',
  FontStyle.italic: 'italic',
};

const _$TextDecorationDefinitionEnumMap = {
  TextDecorationDefinition.none: 'none',
  TextDecorationDefinition.underline: 'underline',
  TextDecorationDefinition.overline: 'overline',
  TextDecorationDefinition.lineThrough: 'lineThrough',
};

const _$TextDecorationStyleEnumMap = {
  TextDecorationStyle.solid: 'solid',
  TextDecorationStyle.double: 'double',
  TextDecorationStyle.dotted: 'dotted',
  TextDecorationStyle.dashed: 'dashed',
  TextDecorationStyle.wavy: 'wavy',
};

const _$TextOverflowEnumMap = {
  TextOverflow.clip: 'clip',
  TextOverflow.fade: 'fade',
  TextOverflow.ellipsis: 'ellipsis',
  TextOverflow.visible: 'visible',
};
