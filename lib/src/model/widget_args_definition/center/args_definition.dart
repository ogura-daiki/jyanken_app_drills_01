import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/keys.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'args_definition.freezed.dart';
part 'args_definition.g.dart';

@freezed
abstract class CenterArgsDefinition with _$CenterArgsDefinition {
  const CenterArgsDefinition._();
  const factory CenterArgsDefinition({@Default(null) WidgetEntity? value}) =
      _CenterArgsDefinition;
  static CenterArgsDefinition child({@Default(null) WidgetEntity? value}) =>
      CenterArgsDefinition(value: value);

  CenterArgsKey get key => switch (this) {
    CenterArgsDefinition() => .child,
  };
  static CenterArgsDefinition fromKV(String key, dynamic value) =>
      switch (CenterArgsKey.fromName(key)) {
        .child => .child(value: value),
      };

  static List<CenterArgsDefinition> fromFixed(FixedCenterArgs fixed) => [
    .child(value: fixed.child),
  ];

  factory CenterArgsDefinition.fromJson(Map<String, dynamic> json) =>
      _$CenterArgsDefinitionFromJson(json);
}
