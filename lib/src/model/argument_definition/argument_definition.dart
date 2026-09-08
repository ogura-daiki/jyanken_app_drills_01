import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
part 'argument_definition.freezed.dart';
part 'argument_definition.g.dart';

@freezed
abstract class ArgumentDefinition with _$ArgumentDefinition {
  const ArgumentDefinition._();
  const factory ArgumentDefinition({
    required String name,
    required VariableValue defaultValue,
  }) = _ArgumentDefinition;

  factory ArgumentDefinition.fromJson(Map<String, dynamic> json) =>
      _$ArgumentDefinitionFromJson(json);
}
