import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum CenterArg with WidgetArgumentsDefinition {
  child(.new(name: "child", defaultValue: .widget(rawValue: null)));

  @override
  final ArgumentDefinition definition;

  const CenterArg(this.definition);

  static CenterArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
