import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum ContainerArg with WidgetArgKey {
  width(.doubleNullable),
  height(.doubleNullable),
  color(.colorNullable),
  child(.widgetNullable);

  @override
  final WidgetArgsType type;

  const ContainerArg(this.type);

  static ContainerArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
