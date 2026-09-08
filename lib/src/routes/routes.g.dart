// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeScreenRoute];

RouteBase get $homeScreenRoute => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $HomeScreenRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'free-play',
      hasOverriddenOnExit: false,
      factory: $FreePlayScreenRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'question',
      hasOverriddenOnExit: false,
      factory: $QuestionListScreenRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: ':questionId',
          hasOverriddenOnExit: false,
          factory: $QuestionScreenRoute._fromState,
        ),
      ],
    ),
  ],
);

mixin $HomeScreenRoute on GoRouteData {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FreePlayScreenRoute on GoRouteData {
  static FreePlayScreenRoute _fromState(GoRouterState state) =>
      const FreePlayScreenRoute();

  @override
  String get location => GoRouteData.$location('/free-play');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $QuestionListScreenRoute on GoRouteData {
  static QuestionListScreenRoute _fromState(GoRouterState state) =>
      const QuestionListScreenRoute();

  @override
  String get location => GoRouteData.$location('/question');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $QuestionScreenRoute on GoRouteData {
  static QuestionScreenRoute _fromState(GoRouterState state) =>
      QuestionScreenRoute(questionId: state.pathParameters['questionId']!);

  QuestionScreenRoute get _self => this as QuestionScreenRoute;

  @override
  String get location => GoRouteData.$location(
    '/question/${Uri.encodeComponent(_self.questionId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
