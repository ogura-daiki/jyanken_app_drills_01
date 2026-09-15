import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
part 'variable.freezed.dart';
part 'variable.g.dart';

@freezed
abstract class Variable with _$Variable {
  const Variable._();
  const factory Variable({
    required String name,
    required VariableValue initialValue,
    required VariableValue value,
  }) = _Variable;

  factory Variable.fromJson(Map<String, dynamic> json) =>
      _$VariableFromJson(json);
}
