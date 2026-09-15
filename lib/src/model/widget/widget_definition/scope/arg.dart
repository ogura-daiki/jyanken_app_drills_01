import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum ScopeArg with WidgetArgumentsDefinition {
  variables(
    .new(
      name: "variables",
      defaultValue: .scope(rawValue: .new(variables: [])),
    ),
  ),
  child(.new(name: "child", defaultValue: .widget(rawValue: null)));

  @override
  final ArgumentDefinition definition;

  const ScopeArg(this.definition);

  static ScopeArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
