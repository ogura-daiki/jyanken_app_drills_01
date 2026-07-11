import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_dropdown_menu/widget_tree_dropdown_menu_item.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_category.dart';

enum WidgetType {
  root(deletable: false, categories: {}),
  container(categories: {.common}),
  text(categories: {.common}),
  column(categories: {.common}),
  center(categories: {.common}),
  align(categories: {.common});

  final bool deletable;
  final Set<WidgetCategory> categories;

  const WidgetType({this.deletable = true, required this.categories});

  bool widgetTreeMenuEnable(WidgetTreeDropdownMenuItem item) => switch (this) {
    .root => switch (item) {
      .edit => true,
      .delete => false,
      .change => false,
    },
    .container => true,
    .text => switch (item) {
      .change => false,
      .delete => true,
      .edit => true,
    },
    .column => true,
    .center => true,
    .align => true,
  };

  static Iterable<WidgetType> findByCategories(
    Set<WidgetCategory> categories,
  ) => values.where((v) => v.categories.any((c) => categories.contains(c)));
}
