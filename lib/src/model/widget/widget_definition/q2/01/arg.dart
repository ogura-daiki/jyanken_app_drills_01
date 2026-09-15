import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum Q2_1Arg with WidgetArgumentsDefinition {
  displayText(
    .new(
      name: "表示テキスト",
      defaultValue: .string(rawValue: ""),
    ),
  );

  @override
  final ArgumentDefinition definition;

  const Q2_1Arg(this.definition);

  static Q2_1Arg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
