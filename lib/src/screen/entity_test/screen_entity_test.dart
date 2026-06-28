import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/widget_entity_editor.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widget_entity_widget.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/selection_node.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/widget_tree_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class ScreenEntityTest extends StatefulWidget {
  const ScreenEntityTest({super.key});

  @override
  State<ScreenEntityTest> createState() => _ScreenEntityTestState();
}

class _ScreenEntityTestState extends State<ScreenEntityTest> {
  late final ValueNotifier<WidgetEntity?> tree;
  late final ValueNotifier<SelectionNode?> selection;

  @override
  void initState() {
    // tree = ValueNotifier(.text(args: .new(text: "テスト")));
    tree = ValueNotifier(
      .column(
        args: .new(crossAxisAlignment: .center, children: [
          ],
        ),
      ),
    );
    selection = .new(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  child: ValueListenableBuilder(
                    valueListenable: tree,
                    builder: (context, value, child) {
                      return SingleChildScrollView(
                        padding: const .only(bottom: 48, top: 16),
                        child: WidgetTreeEditor(
                          entity: value,
                          onSelection: (newSelection) {
                            selection.value = newSelection;
                          },
                          onChange: (WidgetEntity? newEntity) {
                            tree.value = newEntity;
                          },
                        ),
                      );
                    },
                  ),
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
          child: ValueListenableBuilder(
            valueListenable: selection,
            builder: (context, value, child) {
              if (value == null) {
                return Center(child: Text("ウィジェットがありません"));
              }
              return WidgetEntityEditor(
                key: ValueKey(value.id),
                entity: value.entity,
                onChange: value.onChange,
              );
            },
          ),
        ),
        VerticalDivider(),
        Padding(
          padding: const .all(16),
          child: AspectRatio(
            aspectRatio: 9 / 19,
            child: Material(
              elevation: 4,
              clipBehavior: .antiAliasWithSaveLayer,
              child: ValueListenableBuilder(
                valueListenable: tree,
                builder: (context, value, child) {
                  return WidgetEntityWidget(entity: value);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
