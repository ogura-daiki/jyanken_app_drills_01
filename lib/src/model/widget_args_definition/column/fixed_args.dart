import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  factory FixedColumnArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedColumnArgsFromJson(json);
}
