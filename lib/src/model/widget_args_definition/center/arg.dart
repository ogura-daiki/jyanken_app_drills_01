import 'package:jyanken_app_drills/src/model/widget_args_definition/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

enum CenterArg<T> with WidgetArgKey<T> {
  child<WidgetEntity>(.nullable());

  @override
  final TypedArg<T> defaultValue;

  const CenterArg(this.defaultValue);

  static CenterArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
