import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_entity_wrapper.freezed.dart';

@freezed
abstract class WidgetEntityWrapper with _$WidgetEntityWrapper {
  const WidgetEntityWrapper._();
  const factory WidgetEntityWrapper({
    required int id,
    required WidgetType type,
    required Map<WidgetArg, dynamic> args,
  }) = _WidgetEntityWrapper;
}
