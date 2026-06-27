import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedCenterArgs with _$FixedCenterArgs {
  const FixedCenterArgs._();
  const factory FixedCenterArgs({@Default(null) WidgetEntity? child}) =
      _FixedCenterArgs;

  static const initial = FixedCenterArgs();

  factory FixedCenterArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedCenterArgsFromJson(json);
}
