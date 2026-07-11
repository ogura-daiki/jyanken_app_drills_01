import 'package:jyanken_app_drills/src/model/widget_definition/widget_category.dart';
import 'package:jyanken_app_drills/src/model/widget_tree_action/widget_tree_action_type.dart';

enum WidgetType {
  root(categories: {}),
  container(categories: {.common}),
  text(categories: {.common}),
  column(categories: {.common}),
  center(categories: {.common}),
  align(categories: {.common});

  final Set<WidgetCategory> categories;

  const WidgetType({required this.categories});

  bool isAllowedAction(WidgetTreeActionType type) => switch (this) {
    .root => switch (type) {
      .editAttribute => true,
      .remove => false,
      .changeWidget => false,
    },
    .container => true,
    .text => switch (type) {
      .changeWidget => false,
      .editAttribute => true,
      .remove => true,
    },
    .column => true,
    .center => true,
    .align => true,
  };

  static Iterable<WidgetType> findByCategories(
    Set<WidgetCategory> categories,
  ) => values.where((v) => v.categories.any((c) => categories.contains(c)));
}
