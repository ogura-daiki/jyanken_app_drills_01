// ignore_for_file: camel_case_types
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/type/jyanken/hand.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetQ2_3 extends ConsumerWidget {
  final WidgetEntityQ2_3 entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;
  const WidgetQ2_3({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(projectId);
    final viewModel = ref.watch(provider.notifier);
    final enemyHand = viewModel
        .getScopeVariable(from: selector, name: "enemyHandId")
        .getOrThrow(null)
        .requireType<VariableValueInt>()
        .rawValue
        .let((i) => Hand.values[i % Hand.values.length]);
    final myHand = viewModel
        .getScopeVariable(from: selector, name: "myHandId")
        .getOrThrow(null)
        .requireType<VariableValueInt>()
        .rawValue
        .let((i) => Hand.values[i % Hand.values.length]);
    final handResult = switch (enemyHand) {
      .rock => entity.args.handsResult.vsRock[myHand]!,
      .scissors => entity.args.handsResult.vsScissors[myHand]!,
      .paper => entity.args.handsResult.vsPaper[myHand]!,
    };
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .center,
              children: [
                Text("相手", style: TextStyle(fontSize: 20)),
                Text(
                  enemyHand.displayIconString,
                  style: TextStyle(fontSize: 100),
                ),
                Padding(
                  padding: const .symmetric(vertical: 32),
                  child: Text("VS", style: TextStyle(fontSize: 48)),
                ),
                Text(myHand.displayIconString, style: TextStyle(fontSize: 100)),
                Text("あなた", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: .stretch,
          children: [
            Text(
              "あなたの ${handResult.displayString}",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.setScopeVariable(
                  from: selector,
                  name: "enemyHandId",
                  newValue: .int(
                    rawValue: Random().nextInt(Hand.values.length),
                  ),
                );
                viewModel.setScopeVariable(
                  from: selector,
                  name: "myHandId",
                  newValue: .int(
                    rawValue: Random().nextInt(Hand.values.length),
                  ),
                );
              },
              child: Text("ジャンケンする"),
            ),
          ],
        ),
      ],
    );
  }
}
