import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum ContainerArg with WidgetArgumentsDefinition {
  width(.new(name: "width", defaultValue: .doubleNullable(rawValue: null))),
  height(.new(name: "height", defaultValue: .doubleNullable(rawValue: null))),
  color(.new(name: "color", defaultValue: .colorNullable(rawValue: null))),
  child(.new(name: "child", defaultValue: .widget(rawValue: null))),
  ;

  @override
  final ArgumentDefinition definition;

  const ContainerArg(this.definition);

  static ContainerArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
