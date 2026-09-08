import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';

abstract class WidgetArguments<T extends WidgetArgumentsDefinition> {
  const WidgetArguments();
  dynamic getValue(T key);
  WidgetArguments setValue(T key, dynamic value);
  Set<WidgetArgument> toCommonArgs();
}
