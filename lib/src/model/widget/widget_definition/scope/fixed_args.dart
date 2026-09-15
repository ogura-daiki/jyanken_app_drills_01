import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/scope_definition/scope_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/scope/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedScopeArgs extends WidgetArguments<ScopeArg>
    with _$FixedScopeArgs {
  const FixedScopeArgs._();
  const factory FixedScopeArgs({
    @Default(null) WidgetEntity? child,
    @Default(ScopeDefinition(variables: [])) ScopeDefinition variables,
  }) = _FixedScopeArgs;

  @override
  dynamic getValue(ScopeArg key) => switch (key) {
    .child => child,
    .variables => variables,
  };
  @override
  FixedScopeArgs setValue(ScopeArg key, dynamic value) => switch (key) {
    .child => copyWith(child: value),
    .variables => copyWith(variables: value),
  };

  @override
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in ScopeArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  // @override
  // Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
  //   for (final key in ScopeArg.values) key.arg: getValue(key),
  // };

  static const initial = FixedScopeArgs();
  factory FixedScopeArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in ScopeArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedScopeArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedScopeArgsFromJson(json);
}
