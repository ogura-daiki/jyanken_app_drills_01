import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area_layout.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/widget_entity_editor.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class FlutterEditor extends StatefulHookConsumerWidget {
  final Set<WidgetType> allowTypes;
  const FlutterEditor({super.key, required this.allowTypes});

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

    return ResizableAreaLayout(
      areas: [
        .new(
          areaName: "tree",
          type: .ratio(1 / 3),
          widget: Material(
            clipBehavior: .antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Expanded(
                  child: Scaffold(
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
                  ),
                ),
                WidgetCatalog(widgetTypes: widget.allowTypes),
              ],
            ),
          ),
        ),
        .new(
          areaName: "attribute",
          type: .ratio(1 / 3),
          widget: switch (selectedWidget) {
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
        .new(
          areaName: "preview",
          type: .expand(1),
          widget: Center(
            child: Padding(
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
          ),
        ),
      ],
      mainAxis: .horizontal,
      thumbBuilder: (i) => Center(
        child: Container(
          width: 8,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(128),
            border: .all(color: Colors.black38, width: 0.5),
            borderRadius: .circular(16),
          ),
          child: Center(
            child: Text(":", style: TextStyle(color: Colors.black38)),
          ),
        ),
      ),
    );
  }
}
