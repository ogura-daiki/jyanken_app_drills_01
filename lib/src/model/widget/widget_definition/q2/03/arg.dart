import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum AlignArg with WidgetArgumentsDefinition {
  child(.new(name: "child", defaultValue: .widget(rawValue: null))),
  alignment(
    .new(
      name: "alignment",
      defaultValue: .alignment(rawValue: .topLeft),
    ),
  );

  @override
  final ArgumentDefinition definition;

  const AlignArg(this.definition);

  static AlignArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
