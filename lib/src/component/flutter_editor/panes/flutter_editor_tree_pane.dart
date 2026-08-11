import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';

class FlutterEditorTreePane extends ConsumerWidget {
  final int editorId;

  const FlutterEditorTreePane({super.key, required this.editorId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(editorId);
    final state = ref.watch(provider);
    final viewModel = ref.read(provider.notifier);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const .only(bottom: 48, top: 16),
        child: WidgetTreeEditor(
          entity: state.treeRoot,
          selector: [],
          onSelection: (newSelection) {
            viewModel.updateSelection(newSelection);
          },
          onAction: (action) {
            viewModel.onAction(action);
          },
        ),
      ),
    );
  }
}
