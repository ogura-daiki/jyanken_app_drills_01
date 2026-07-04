import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';

enum TextArg<T> with WidgetArgKey<T> {
  text(""),
  fontSize<double?>(18),
  color<ColorWrapper?>(null),
  ;

  @override
  final T defaultValue;

  const TextArg(this.defaultValue);

  static TextArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
