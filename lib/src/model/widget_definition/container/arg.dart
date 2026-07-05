import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

enum ContainerArg<T> with WidgetArgKey<T> {
  width<double>(.nullable()),
  height<double>(.nullable()),
  color<ColorWrapper>(.nullable(null)),
  child<WidgetEntity>(.nullable(null));

  @override
  final TypedArg<T> defaultValue;

  const ContainerArg(this.defaultValue);

  static ContainerArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
