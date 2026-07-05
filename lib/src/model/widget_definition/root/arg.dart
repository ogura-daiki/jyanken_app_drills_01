import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

enum RootArg<T> with WidgetArgKey {
  child<WidgetEntity>(.nullable());

  @override
  final TypedArg<T> defaultValue;

  const RootArg(this.defaultValue);

  static RootArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
