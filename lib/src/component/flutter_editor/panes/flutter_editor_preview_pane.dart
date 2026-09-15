import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';

class FlutterEditorPreviewPane extends ConsumerWidget {
  final ProjectId projectId;

  const FlutterEditorPreviewPane({super.key, required this.projectId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(projectId);
    final state = ref.watch(provider);
    final screenSize = MediaQuery.sizeOf(context);
    return FittedBox(
      fit: .contain,
      child: SizedBox(
        height: screenSize.height,
        width: screenSize.height * 9 / 19,
        child: Material(
          elevation: 4,
          clipBehavior: .antiAliasWithSaveLayer,
          child: WidgetEntityWidget(entity: state.treeRoot),
        ),
      ),
    );
  }
}
