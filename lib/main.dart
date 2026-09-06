import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/root.dart';
import 'package:jyanken_app_drills/src/usecase/di.dart';

void main() {
  registerUsecase();
  runApp(const ProviderScope(child: Root()));
}

