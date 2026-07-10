import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

mixin WidgetArgKey<T> on Enum {
  TypedArg<T> get defaultValue;

  WidgetArgDefinition get arg => switch (defaultValue) {
    NonnullArg<String> v => .string(name: name, defaultValue: v.value),
    NonnullArg<double> v => .double(name: name, defaultValue: v.value),
    NullableArg<double> v => .doubleNullable(name: name, defaultValue: v.value),
    NullableArg<ColorWrapper> v => .colorNullable(
      name: name,
      defaultValue: v.value,
    ),
    NonnullArg<CrossAxisAlignment> v => .crossAxisAlignment(
      name: name,
      defaultValue: v.value,
    ),
    NullableArg<WidgetEntity> v => .widget(name: name, defaultValue: v.value),
    NonnullArg<List<WidgetEntity>> v => .widgetList(
      name: name,
      defaultValue: v.value,
    ),
    _ => throw UnimplementedError("未対応の型の引数です: ${defaultValue.runtimeType}"),
  };
}
