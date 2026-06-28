import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedColumnArgs with _$FixedColumnArgs {
  const FixedColumnArgs._();
  const factory FixedColumnArgs({
    @Default(CrossAxisAlignment.start) CrossAxisAlignment crossAxisAlignment,
    @Default([]) List<WidgetEntity> children,
  }) = _FixedColumnArgs;

  static const initial = FixedColumnArgs();
  
  dynamic getValue(ColumnArg key) => switch (key) {
    .crossAxisAlignment => crossAxisAlignment,
    .children => children,
  };
  FixedColumnArgs setValue(ColumnArg key, dynamic value) => switch (key) {
    .crossAxisAlignment => copyWith(crossAxisAlignment: value),
    .children => copyWith(children: value),
  };

  WidgetArgsWrapper toWrapper() => .new(
    type: .column,
    args: {for (final key in ColumnArg.values) key.toArg(): getValue(key)},
  );
  factory FixedColumnArgs.fromWrapper(WidgetArgsWrapper value) {
    var result = initial;
    for (final key in ColumnArg.values) {
      result = result.setValue(key, value.args[key.toArg()]);
    }
    return result;
  }

  factory FixedColumnArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedColumnArgsFromJson(json);
}
