import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/widget_entity_editor.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class FlutterEditor extends StatefulHookConsumerWidget {
  const FlutterEditor({super.key});

  @override
  ConsumerState<FlutterEditor> createState() => _FlutterEditorState();
}

class _FlutterEditorState extends ConsumerState<FlutterEditor> {
  late final int id;

  static int _id = 0;

  @override
  void initState() {
    id = _id++;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = flutterEditorViewmodelProvider(id);
    final state = ref.watch(provider);
    final viewModel = ref.read(provider.notifier);

    final selectedWidget = useMemoized<Result<WidgetEntity>>(() {
      return viewModel.getSelectedWidget();
    }, [state]);

    return Row(
      crossAxisAlignment: .stretch,
      mainAxisSize: .max,
      children: [
        Expanded(
          child: Material(
            clipBehavior: .antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Expanded(
                  child: switch (state.treeRoot) {
                    WidgetEntity we => SingleChildScrollView(
                      padding: const .only(bottom: 48, top: 16),
                      child: WidgetTreeEditor(
                        entity: we,
                        selector: [],
                        onSelection: (newSelection) {
                          viewModel.updateSelection(newSelection);
                        },
                        onAction: (action) {
                          viewModel.onAction(action);
                        },
                      ),
                    ),
                  },
                ),
                WidgetCatalog(),
              ],
            ),
          ),
        ),
        Container(
          width: 1,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        Expanded(
          child: switch (selectedWidget) {
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
          },
        ),
        Container(
          width: 1,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        Padding(
          padding: const .all(16),
          child: AspectRatio(
            aspectRatio: 9 / 19,
            child: Material(
              elevation: 4,
              clipBehavior: .antiAliasWithSaveLayer,
              child: WidgetEntityWidget(entity: state.treeRoot),
            ),
          ),
        ),
      ],
    );
  }
}
