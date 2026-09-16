import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_align.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_center.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_column.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_container.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_expanded.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_q2_1.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_q2_2.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_q2_3.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_root.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_row.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_scope.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_text.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetEntityWidget extends StatelessWidget {
  final WidgetEntity? entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;

  const WidgetEntityWidget({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (details) {
      final error = details.exception;
      return SelectableText("エラーが発生\n$error");
    };
    return switch (entity) {
      null => const Offstage(),
      WidgetEntity we => switch (we) {
        WidgetEntityRoot e => WidgetRoot(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityContainer e => WidgetContainer(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityText e => WidgetText(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityColumn e => WidgetColumn(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityRow e => WidgetRow(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityExpanded e => WidgetExpanded(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityCenter e => WidgetCenter(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityAlign e => WidgetAlign(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityScope e => WidgetScope(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityQ2_1 e => WidgetQ2_1(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityQ2_2 e => WidgetQ2_2(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
        WidgetEntityQ2_3 e => WidgetQ2_3(
          entity: e,
          projectId: projectId,
          selector: selector,
        ),
      },
    };
  }
}
