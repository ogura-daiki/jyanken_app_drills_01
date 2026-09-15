import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/variable/variable.dart';
part 'scope_definition.freezed.dart';
part 'scope_definition.g.dart';

@freezed
abstract class ScopeDefinition with _$ScopeDefinition {
  const ScopeDefinition._();
  const factory ScopeDefinition({required List<Variable> variables}) =
      _ScopeDefinition;

  factory ScopeDefinition.fromJson(Map<String, dynamic> json) =>
      _$ScopeDefinitionFromJson(json);
}
