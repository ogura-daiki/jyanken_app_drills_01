import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/screen/entity_test/screen_entity_test.dart';
import 'package:jyanken_app_drills/src/screen/home/screen_home.dart';
import 'package:jyanken_app_drills/src/usecase/di.dart';

void main() {
  registerUsecase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Material(child: ScreenHome()),
      ),
    );
  }
}
