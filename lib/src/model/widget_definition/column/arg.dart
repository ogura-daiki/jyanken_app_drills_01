import 'package:flutter/rendering.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

enum ColumnArg<T> with WidgetArgKey {
  crossAxisAlignment<CrossAxisAlignment>(.nonNull(.start)),
  children<List<WidgetEntity>>(.nonNull([]));

  @override
  final TypedArg<T> defaultValue;

  const ColumnArg(this.defaultValue);

  static ColumnArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
