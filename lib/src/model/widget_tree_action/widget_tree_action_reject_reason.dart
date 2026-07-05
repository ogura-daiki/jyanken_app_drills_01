import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';

enum WidgetTreeActionRejectReason { widgetNotDeletable }

sealed class WidgetTreeActionRejectException implements Exception {
  final WidgetTreeActionRejectReason reason;

  WidgetTreeActionRejectException({required this.reason});

  @override
  String toString() {
    return "$runtimeType: ${reason.name}";
  }
}

class WidgetTreeActionRejectNotDeletable
    extends WidgetTreeActionRejectException {
  final WidgetEntityId id;
  final WidgetType type;
  WidgetTreeActionRejectNotDeletable({required this.id, required this.type})
    : super(reason: .widgetNotDeletable);
}
