// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeScreenRoute, $editorScreenRoute];

RouteBase get $homeScreenRoute => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $HomeScreenRoute._fromState,
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

RouteBase get $editorScreenRoute => GoRouteData.$route(
  path: '/editor/:projectId',
  hasOverriddenOnExit: false,
  factory: $EditorScreenRoute._fromState,
);

mixin $EditorScreenRoute on GoRouteData {
  static EditorScreenRoute _fromState(GoRouterState state) =>
      EditorScreenRoute(projectId: state.pathParameters['projectId']!);

  EditorScreenRoute get _self => this as EditorScreenRoute;

  @override
  String get location =>
      GoRouteData.$location('/editor/${Uri.encodeComponent(_self.projectId)}');

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
