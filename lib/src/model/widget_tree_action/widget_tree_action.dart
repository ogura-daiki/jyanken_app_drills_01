import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/widget_child_selector.dart';
part 'widget_tree_action.freezed.dart';
part 'widget_tree_action.g.dart';

@freezed
sealed class WidgetTreeAction with _$WidgetTreeAction {
  const WidgetTreeAction._();
  const factory WidgetTreeAction.update({
    required List<WidgetChildSelector> selector,
    required WidgetEntity? oldValue,
    required WidgetEntity newValue,
  }) = WidgetTreeActionUpdate;
  const factory WidgetTreeAction.remove({
    required List<WidgetChildSelector> selector,
  }) = WidgetTreeActionRemove;

  factory WidgetTreeAction.fromJson(Map<String, dynamic> json) =>
      _$WidgetTreeActionFromJson(json);
}
