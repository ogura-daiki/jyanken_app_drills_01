import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:jyanken_app_drills/src/screen/editor/screen_editor.dart';
import 'package:jyanken_app_drills/src/screen/home/screen_home.dart';
import 'package:jyanken_app_drills/src/screen/list_question/screen_questions.dart';
part 'routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: "/",
  routes: [
    TypedGoRoute<FreePlayScreenRoute>(path: "/free-play"),
    TypedGoRoute<QuestionListScreenRoute>(path: "/question"),
  ],
)
class HomeScreenRoute extends GoRouteData with $HomeScreenRoute {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => ScreenHome();
}

class FreePlayScreenRoute extends GoRouteData with $FreePlayScreenRoute {
  const FreePlayScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ScreenEditor(id: "free-play");
}

class QuestionListScreenRoute extends GoRouteData
    with $QuestionListScreenRoute {
  const QuestionListScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ScreenQuestionList();
  }
}
