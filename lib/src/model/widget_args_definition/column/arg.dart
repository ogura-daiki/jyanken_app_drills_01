import 'package:flutter/rendering.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

enum ColumnArg<T> with WidgetArgKey {
  crossAxisAlignment<CrossAxisAlignment>(.start),
  children<List<WidgetEntity>>([]);

  @override
  final T defaultValue;

  const ColumnArg(this.defaultValue);

  static ColumnArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
