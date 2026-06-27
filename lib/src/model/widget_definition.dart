import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum WidgetDefinition {
  text(args: {"text": .string}),
  center(args: {"child": .widget}),
  column(
    args: {"crossAxisAlignment": .crossAxisAlignment, "children": .widgetList},
  );

  final Map<String, WidgetArgsType> args;

  const WidgetDefinition({required this.args});
}
