// ignore_for_file: camel_case_types

import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum Q2_3Arg with WidgetArgumentsDefinition {
  handsResult(
    .new(
      name: "handsResult",
      defaultValue: .handsResult(rawValue: .new()),
    ),
  );

  @override
  final ArgumentDefinition definition;

  const Q2_3Arg(this.definition);

  static Q2_3Arg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
