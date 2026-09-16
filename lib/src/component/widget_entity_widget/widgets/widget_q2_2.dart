// ignore_for_file: camel_case_types
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetQ2_2 extends ConsumerWidget {
  final WidgetEntityQ2_2 entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;
  const WidgetQ2_2({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(projectId);
    final viewModel = ref.watch(provider.notifier);
    final rand = Random();
    final displayText = viewModel
        .getScopeVariable(from: selector, name: "displayText")
        .getOrThrow(null)
        .requireType<VariableValueString>()
        .rawValue;
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              displayText,
              style: TextStyle(fontSize: 100, overflow: .ellipsis),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final randVal = rand.nextInt(entity.args.hands.length);
            viewModel.setScopeVariable(
              from: selector,
              name: "random",
              newValue: .int(rawValue: randVal),
            );
            viewModel.setScopeVariable(
              from: selector,
              name: "displayText",
              newValue: .string(
                rawValue: entity.args.hands[randVal % entity.args.hands.length],
              ),
            );
          },
          child: Text("ランダム"),
        ),
      ],
    );
  }
}
