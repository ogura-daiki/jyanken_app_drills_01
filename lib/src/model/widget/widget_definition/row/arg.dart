import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';

enum RowArg with WidgetArgumentsDefinition {
  mainAxisSize(
    .new(
      name: "mainAxisSize",
      defaultValue: .mainAxisSize(rawValue: .min),
    ),
  ),
  mainAxisAlignment(
    .new(
      name: "mainAxisAlignment",
      defaultValue: .mainAxisAlignment(rawValue: .start),
    ),
  ),
  crossAxisAlignment(
    .new(
      name: "crossAxisAlignment",
      defaultValue: .crossAxisAlignment(rawValue: .start),
    ),
  ),
  spacing(.new(name: "spacing", defaultValue: .double(rawValue: 0))),
  children(
    .new(
      name: "children",
      defaultValue: .widgetList(rawValue: []),
    ),
  );

  @override
  final ArgumentDefinition definition;

  const RowArg(this.definition);

  static RowArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
