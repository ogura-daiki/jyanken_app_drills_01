import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/question/questions.dart';
import 'package:jyanken_app_drills/src/screen/editor/screen_editor.dart';
import 'package:jyanken_app_drills/src/screen/home/screen_home.dart';
import 'package:jyanken_app_drills/src/screen/list_question/screen_question_list.dart';
import 'package:jyanken_app_drills/src/screen/question/screen_question.dart';
part 'routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: "/",
  routes: [
    TypedGoRoute<FreePlayScreenRoute>(path: "free-play"),
    TypedGoRoute<QuestionListScreenRoute>(
      path: "question",
      routes: [TypedGoRoute<QuestionScreenRoute>(path: ":questionId")],
    ),
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

class QuestionScreenRoute extends GoRouteData with $QuestionScreenRoute {
  final String questionId;
  const QuestionScreenRoute({required this.questionId});

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    if (Questions.findById(questionId) case Failure()) {
      return HomeScreenRoute().location;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ScreenQuestion(
      question: Questions.findById(
        questionId,
      ).getOrThrow(Exception("問題が見つかりませんでした。")),
    );
  }
}
