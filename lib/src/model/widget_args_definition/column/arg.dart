import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum ColumnArg with WidgetArgKey {
  crossAxisAlignment(.crossAxisAlignment),
  children(.widgetList);

  @override
  final WidgetArgsType type;

  const ColumnArg(this.type);

  static ColumnArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
