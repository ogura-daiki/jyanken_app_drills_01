import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/built_in_text_style.dart';

extension GetBuiltInTextStyle on BuiltInTextStyle {
  TextStyle? getTextStyle(BuildContext context) {
    final tt = TextTheme.of(context);
    return switch (this) {
      .displayLarge => tt.displayLarge,
      .displayMedium => tt.displayMedium,
      .displaySmall => tt.displaySmall,
      .headlineLarge => tt.headlineLarge,
      .headlineMedium => tt.headlineMedium,
      .headlineSmall => tt.headlineSmall,
      .titleLarge => tt.titleLarge,
      .titleMedium => tt.titleMedium,
      .titleSmall => tt.titleSmall,
      .bodyLarge => tt.bodyLarge,
      .bodyMedium => tt.bodyMedium,
      .bodySmall => tt.bodySmall,
      .labelLarge => tt.labelLarge,
      .labelMedium => tt.labelMedium,
      .labelSmall => tt.labelSmall,
    };
  }
}
