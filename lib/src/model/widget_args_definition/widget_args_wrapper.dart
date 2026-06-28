import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_args_wrapper.freezed.dart';

@freezed
abstract class WidgetArgsWrapper with _$WidgetArgsWrapper {
  const WidgetArgsWrapper._();
  const factory WidgetArgsWrapper({
    required WidgetType type,
    required Map<WidgetArg, dynamic> args,
  }) = _WidgetArgsWrapper;
}
