import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/panes/flutter_editor_attribute_editor_pane.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/panes/flutter_editor_preview_pane.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/panes/flutter_editor_tree_pane.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area_layout.dart';
import 'package:jyanken_app_drills/src/component/widget_catalog/widget_catalog.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';

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

  Widget treeArea() {
    return Material(
      clipBehavior: .antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Expanded(child: FlutterEditorTreePane(editorId: id)),
          WidgetCatalog(widgetTypes: widget.allowTypes),
        ],
      ),
    );
  }

  Widget previewArea() {
    return Center(
      child: Padding(
        padding: const .all(16),
        child: FlutterEditorPreviewPane(editorId: id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return switch (orientation) {
          .landscape => horizontalLayout(),
          .portrait => verticalLayout(),
        };
      },
    );
  }

  Widget horizontalLayout() {
    return ResizableAreaLayout(
      mainAxis: .horizontal,
      areas: [
        .new(areaName: "tree", type: .ratio(1 / 3), widget: treeArea()),
        .new(
          areaName: "attribute",
          type: .ratio(1 / 3),
          widget: FlutterEditorAttributeEditorPane(editorId: id),
        ),
        .new(areaName: "preview", type: .expand(1), widget: previewArea()),
      ],
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

  Widget verticalLayout() {
    return ResizableAreaLayout(
      mainAxis: .vertical,
      areas: [
        .new(areaName: "preview", type: .expand(1), widget: previewArea()),
        .new(
          areaName: "bottom",
          type: .ratio(1 / 2),
          widget: ResizableAreaLayout(
            mainAxis: .horizontal,
            areas: [
              .new(areaName: "tree", type: .ratio(1 / 2), widget: treeArea()),
              .new(
                areaName: "attribute",
                type: .expand(1),
                widget: FlutterEditorAttributeEditorPane(editorId: id),
              ),
            ],
            thumbBuilder: (_) => Center(
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
          ),
        ),
      ],
      thumbBuilder: (_) => Center(
        child: Container(
          width: 48,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(128),
            border: .all(color: Colors.black38, width: 0.5),
            borderRadius: .circular(16),
          ),
          child: Center(
            child: Text("･･", style: TextStyle(color: Colors.black38)),
          ),
        ),
      ),
    );
  }
}
