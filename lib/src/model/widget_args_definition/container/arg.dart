import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

enum ContainerArg<T> with WidgetArgKey<T> {
  width<double?>(null),
  height<double?>(null),
  color<ColorWrapper?>(null),
  child<WidgetEntity?>(null);

  @override
  final T defaultValue;

  const ContainerArg(this.defaultValue);

  static ContainerArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
