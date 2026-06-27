import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum WidgetDefinition {
  text(args: {"text": .string}),
  center(args: {"child": .widget});

  final Map<String, WidgetArgsType> args;

  const WidgetDefinition({required this.args});
}
