import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetTreeEditor extends StatefulWidget {
  final WidgetEntity entity;
  final void Function(WidgetEntity? newEntity) onChange;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onChange,
  });

  @override
  State<WidgetTreeEditor> createState() => _WidgetTreeEditorState();
}

class _WidgetTreeEditorState extends State<WidgetTreeEditor> {
  List<String> tree = [];

  @override
  void initState() {
    updateTree();
    super.initState();
  }

  void updateTree() {
    final List<String> result = [];
    final List<(int, WidgetEntity)> list = [(0, widget.entity)];
    int i = 0;
    while (i < list.length) {
      final idx = i++;
      final needle = list[idx];
      final depth = needle.$1;
      final wrapper = WidgetArgsWrapper.fromWidget(needle.$2);
      result.add("${"  " * depth}${wrapper.type.name}");
      final subTrees = wrapper.args.entries.where((e) => e.key.type.hasChild);
      for (final subTree in subTrees) {
        result.add("${"  " * depth} ${subTree.key.name}");
        switch (subTree.key.type) {
          case .widget:
            list.addAll(switch (subTree.value) {
              WidgetEntity e => [(depth + 1, e)],
              _ => [],
            });
          case .widgetList:
            list.addAll(switch (subTree.value) {
              List<WidgetEntity> l => l.map((e) => (depth + 1, e)),
              _ => [],
            });
          default:
            break;
        }
      }
    }

    setState(() {
      tree = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      mainAxisAlignment: .start,
      children: tree.map((e) => Text(e)).toList(),
    );
  }
}
