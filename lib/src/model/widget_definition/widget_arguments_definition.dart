import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';

abstract class WidgetArgumentsDefinition<T extends WidgetArgKey> {
  const WidgetArgumentsDefinition();
  dynamic getValue(T key);
  WidgetArgumentsDefinition setValue(T key, dynamic value);
  Map<WidgetArg, dynamic> toCommonArgs();
}
