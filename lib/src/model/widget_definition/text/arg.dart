import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';

enum TextArg<T> with WidgetArgKey {
  text<String>(.nonNull("")),
  fontSize<double>(.nullable(18)),
  color<ColorWrapper>(.nullable());

  @override
  final TypedArg<T> defaultValue;

  const TextArg(this.defaultValue);

  static TextArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
