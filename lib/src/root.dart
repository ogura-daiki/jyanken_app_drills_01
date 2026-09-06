import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/routes/router.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: .new(colorScheme: .fromSeed(seedColor: Colors.teal)),
      routerConfig: router,
    );
  }
}
