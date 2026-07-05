import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';
part 'widget_child_selector.freezed.dart';
part 'widget_child_selector.g.dart';

@freezed
abstract class WidgetChildSelector with _$WidgetChildSelector {
  const WidgetChildSelector._();
  const factory WidgetChildSelector({
    required CanHaveChildArg arg,
    required WidgetEntityId entityId,
  }) = _WidgetChildSelector;

  factory WidgetChildSelector.fromJson(Map<String, dynamic> json) =>
      _$WidgetChildSelectorFromJson(json);
}
