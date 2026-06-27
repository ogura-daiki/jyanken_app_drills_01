import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

mixin WidgetArgKey on Enum {
  WidgetArgsType get type;
  WidgetArg toArg() => .new(type: type, name: name);
}
