import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/screen/entity_test/screen_entity_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Material(child: ScreenEntityTest()),
    );
  }
}
