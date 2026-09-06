import 'package:flutter/rendering.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

enum RowArg<T> with WidgetArgKey {
  mainAxisSize<MainAxisSize>(.nonNull(.min)),
  mainAxisAlignment<MainAxisAlignment>(.nonNull(.start)),
  crossAxisAlignment<CrossAxisAlignment>(.nonNull(.start)),
  spacing<double>(.nonNull(0)),
  children<List<WidgetEntity>>(.nonNull([]));

  @override
  final TypedArg<T> defaultValue;

  const RowArg(this.defaultValue);

  static RowArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
