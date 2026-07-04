import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

mixin WidgetArgKey<T> on Enum {
  T get defaultValue;

  WidgetArg get arg => switch (defaultValue) {
    String v => .string(name: name, defaultValue: v),
    double v => .double(name: name, defaultValue: v),
    double? v => .doubleNullable(name: name, defaultValue: v),
    ColorWrapper? v => .colorNullable(name: name, defaultValue: v),
    CrossAxisAlignment v => .crossAxisAlignment(name: name, defaultValue: v),
    WidgetEntity? v => .widget(name: name, defaultValue: v),
    List<WidgetEntity> v => .widgetList(name: name, defaultValue: v),
    _ => throw UnimplementedError("未対応の型の引数です: ${defaultValue.runtimeType}"),
  };
}
