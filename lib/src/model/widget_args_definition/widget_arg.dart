import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';
part 'widget_arg.freezed.dart';
part 'widget_arg.g.dart';

@freezed
abstract class WidgetArg with _$WidgetArg {
  const WidgetArg._();
  const factory WidgetArg({
    required WidgetArgsType type,
    required String name,
  }) = _WidgetArg;

  factory WidgetArg.fromJson(Map<String, dynamic> json) =>
      _$WidgetArgFromJson(json);
}
