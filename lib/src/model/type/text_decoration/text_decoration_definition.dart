import 'dart:ui';

enum TextDecorationDefinition {
  /// Do not draw a decoration
  none,

  /// Draw a line underneath each line of text
  underline,

  /// Draw a line above each line of text
  overline,

  /// Draw a line through each line of text
  lineThrough;

  TextDecoration get decoration => switch (this) {
    none => .none,
    underline => .underline,
    overline => .overline,
    lineThrough => .lineThrough,
  };
}
