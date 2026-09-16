import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum Q2_2Arg with WidgetArgumentsDefinition {
  hands(
    .new(
      name: "hands",
      defaultValue: .stringList(rawValue: []),
    ),
  );

  @override
  final ArgumentDefinition definition;

  const Q2_2Arg(this.definition);

  static Q2_2Arg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
