import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id_generator.dart';
part 'widget_entity_id.freezed.dart';
part 'widget_entity_id.g.dart';

@freezed
abstract class WidgetEntityId with _$WidgetEntityId {
  const WidgetEntityId._();
  const factory WidgetEntityId(int value) = _WidgetEntityId;

  factory WidgetEntityId.create() =>
      WidgetEntityId(WidgetEntityIdGenerator.i.getId());

  factory WidgetEntityId.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityIdFromJson(json);
}
