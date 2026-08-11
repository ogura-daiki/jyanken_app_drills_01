import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/widget_entity_editor.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class FlutterEditorAttributeEditorPane extends HookConsumerWidget {
  final int editorId;

  const FlutterEditorAttributeEditorPane({super.key, required this.editorId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(editorId);
    final state = ref.watch(provider);
    final viewModel = ref.read(provider.notifier);
    final selectedWidget = useMemoized<Result<WidgetEntity>>(() {
      return viewModel.getSelectedWidget();
    }, [state]);

    return switch (selectedWidget) {
      Failure() => const Center(child: Text("ウィジェットがありません")),
      Success(:final value) => WidgetEntityEditor(
        key: ValueKey(value.id),
        selector: state.selection,
        initialValue: value,
        onSelect: viewModel.updateSelection,
        onChange: (newValue) {
          viewModel.onAction(
            .update(
              selector: state.selection,
              oldValue: value,
              newValue: newValue,
            ),
          );
        },
      ),
    };
  }
}
