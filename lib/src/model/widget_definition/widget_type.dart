import 'package:jyanken_app_drills/src/model/widget_definition/widget_category.dart';

enum WidgetType {
  root(deletable: false, categories: {}),
  container(categories: {.common}),
  text(categories: {.common}),
  column(categories: {.common}),
  center(categories: {.common});

  final bool deletable;
  final Set<WidgetCategory> categories;

  const WidgetType({this.deletable = true, required this.categories});

  static Iterable<WidgetType> findByCategories(
    Set<WidgetCategory> categories,
  ) => values.where((v) => v.categories.any((c) => categories.contains(c)));
}
