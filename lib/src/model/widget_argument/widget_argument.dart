import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments_definition.dart';
part 'widget_argument.freezed.dart';
part 'widget_argument.g.dart';

@freezed
abstract class WidgetArgument with _$WidgetArgument {
  const WidgetArgument._();

  @Assert("definition.defaultValue.runtimeType == value.runtimeType")
  factory WidgetArgument({
    required ArgumentDefinition definition,
    required VariableValue value,
  }) = _WidgetArgument;

  factory WidgetArgument.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgumentFromJson(json);
}

extension WidgetArgumentSet on Set<WidgetArgument> {
  WidgetArgument findByArgDefinition(ArgumentDefinition definition) =>
      singleWhere((e) => e.definition == definition);
  WidgetArgument findByArg(WidgetArgument arg) =>
      findByArgDefinition(arg.definition);
  WidgetArgument find(WidgetArgumentsDefinition key) =>
      findByArgDefinition(key.definition);
  VariableValue findValue(WidgetArgumentsDefinition key) => find(key).value;

  Iterable<ArgumentDefinition> get keys => map((e) => e.definition);

  Set<WidgetArgument> updateWith(WidgetArgument newArg) {
    final newArgs = {...this};
    final old = newArgs.findByArg(newArg);
    newArgs.remove(old);
    newArgs.add(newArg);
    return newArgs;
  }
}
