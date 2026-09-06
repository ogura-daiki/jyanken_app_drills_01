import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/type/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

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
    NonnullArg<MainAxisAlignment> v => .mainAxisAlignment(
      name: name,
      defaultValue: v.value,
    ),
    NonnullArg<MainAxisSize> v => .mainAxisSize(
      name: name,
      defaultValue: v.value,
    ),
    NullableArg<WidgetEntity> v => .widget(name: name, defaultValue: v.value),
    NonnullArg<List<WidgetEntity>> v => .widgetList(
      name: name,
      defaultValue: v.value,
    ),
    NonnullArg<AlignmentWrapper> v => .alignment(
      name: name,
      defaultValue: v.value,
    ),
    NullableArg<TextStyleWrapper> v => .textStyle(
      name: name,
      defaultValue: v.value,
    ),
    _ => throw UnimplementedError(
      "WidgetArgKey 未対応の型の引数です: ${defaultValue.runtimeType}",
    ),
  };
}
