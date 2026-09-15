import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum ExpandedArg with WidgetArgumentsDefinition {
  flex(.new(name: "flex", defaultValue: .int(rawValue: 1))),
  child(.new(name: "child", defaultValue: .widget(rawValue: null)));

  @override
  final ArgumentDefinition definition;

  const ExpandedArg(this.definition);

  static ExpandedArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
