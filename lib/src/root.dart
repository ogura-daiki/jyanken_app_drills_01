import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/routes/router.dart';
import 'package:jyanken_app_drills/src/theme/app_colors.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  ThemeData buildTheme(Brightness brightness) {
    return .new(
      colorScheme: .fromSeed(seedColor: Colors.teal, brightness: brightness),
    ).copyWith(extensions: [AppColors.fromBrightness(brightness)]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: .new(
        colorScheme: .fromSeed(seedColor: Colors.teal, brightness: .light),
      ).copyWith(extensions: [AppColors.light()]),
      darkTheme: .new(
        colorScheme: .fromSeed(seedColor: Colors.teal, brightness: .dark),
      ).copyWith(extensions: [AppColors.dark()]),
      routerConfig: router,
    );
  }
}
