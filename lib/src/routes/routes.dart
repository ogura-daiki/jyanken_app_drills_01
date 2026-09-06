import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:jyanken_app_drills/src/screen/editor/screen_editor.dart';
import 'package:jyanken_app_drills/src/screen/home/screen_home.dart';
part 'routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(path: "/")
class HomeScreenRoute extends GoRouteData with $HomeScreenRoute {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => ScreenHome();
}

@TypedGoRoute<EditorScreenRoute>(path: "/editor/:projectId")
class EditorScreenRoute extends GoRouteData with $EditorScreenRoute {
  final String projectId;
  const EditorScreenRoute({required this.projectId});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ScreenEditor(id: projectId);
}
