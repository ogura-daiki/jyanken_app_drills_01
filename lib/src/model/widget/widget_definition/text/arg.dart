import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum TextArg<T> with WidgetArgumentsDefinition {
  text(
    .new(
      name: "text",
      defaultValue: .string(rawValue: ""),
    ),
  ),
  style(.new(name: "style", defaultValue: .textStyle(rawValue: null)));

  @override
  final ArgumentDefinition definition;

  const TextArg(this.definition);

  static TextArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
