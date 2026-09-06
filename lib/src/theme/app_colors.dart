import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color success;
  final Color onSuccess;

  const AppColors({required this.success, required this.onSuccess});

  AppColors.light()
    : this(
        success: HSLColor.fromAHSL(1, 120, 1, 0.35).toColor(),
        onSuccess: HSLColor.fromAHSL(1, 120, 1, 0.9).toColor(),
      );

  AppColors.dark()
    : this(
        success: HSLColor.fromAHSL(1, 120, 1, 0.85).toColor(),
        onSuccess: HSLColor.fromAHSL(1, 120, 1, 0.2).toColor(),
      );

  factory AppColors.fromBrightness(Brightness brightness) =>
      switch (brightness) {
        .light => .light(),
        .dark => .dark(),
      };

  @override
  AppColors copyWith({Color? success, Color? onSuccess}) => AppColors(
    success: success ?? this.success,
    onSuccess: onSuccess ?? this.onSuccess,
  );

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    if (other == null) return this;
    return AppColors(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
    );
  }
}

extension AppThemeExtension on ThemeData {
  AppColors get appColors => extension<AppColors>()!;
}
