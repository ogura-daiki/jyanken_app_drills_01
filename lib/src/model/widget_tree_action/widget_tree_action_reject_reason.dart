import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity_id.dart';

enum WidgetTreeActionRejectReason { actionNotAllowed }

class WidgetTreeActionRejectException implements Exception {
  final WidgetTreeActionRejectReason reason;
  final WidgetEntityId? id;
  final WidgetType type;

  WidgetTreeActionRejectException({
    required this.reason,
    this.id,
    required this.type,
  });

  @override
  String toString() {
    return "$runtimeType: ${reason.name}";
  }
}

