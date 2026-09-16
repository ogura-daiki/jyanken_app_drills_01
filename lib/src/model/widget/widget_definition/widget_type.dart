import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_category.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree_action/widget_tree_action_type.dart';

enum WidgetType {
  root(categories: {}),
  container(categories: {.common}),
  text(categories: {.common}),
  column(categories: {.common}),
  row(categories: {.common}),
  expanded(categories: {.common}),
  center(categories: {.common}),
  align(categories: {.common}),
  scope(categories: {.common}),
  q2_1(categories: {.common}),
  q2_2(categories: {.common}),
  q2_3(categories: {.common});

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
    .row => true,
    .column => true,
    .center => true,
    .expanded => true,
    .align => true,
    .scope => true,
    .q2_1 || .q2_2 || .q2_3 => switch (type) {
      .editAttribute => true,
      .remove => false,
      .changeWidget => false,
    },
  };

  static Iterable<WidgetType> findByCategories(
    Set<WidgetCategory> categories,
  ) => values.where((v) => v.categories.any((c) => categories.contains(c)));
}
