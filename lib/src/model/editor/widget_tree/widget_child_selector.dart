import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity_id.dart';
part 'widget_child_selector.freezed.dart';
part 'widget_child_selector.g.dart';

@freezed
abstract class WidgetChildSelector with _$WidgetChildSelector {
  const WidgetChildSelector._();
  const factory WidgetChildSelector({
    required ArgumentDefinition arg,
    required WidgetEntityId entityId,
  }) = _WidgetChildSelector;

  factory WidgetChildSelector.fromJson(Map<String, dynamic> json) =>
      _$WidgetChildSelectorFromJson(json);
}
