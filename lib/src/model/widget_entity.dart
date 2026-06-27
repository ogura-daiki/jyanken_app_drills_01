import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_definition.dart';
part 'widget_entity.freezed.dart';
part 'widget_entity.g.dart';

@freezed
sealed class WidgetEntity with _$WidgetEntity {
  const WidgetEntity._();
  const factory WidgetEntity.text({required String text}) = WidgetEntityText;
  const factory WidgetEntity.center({required WidgetEntity child}) =
      WidgetEntityCenter;

  WidgetDefinition get definition => switch (this) {
    WidgetEntityText() => .text,
    WidgetEntityCenter() => .center,
  };

  factory WidgetEntity.fromJson(Map<String, dynamic> json) =>
      _$WidgetEntityFromJson(json);
}
