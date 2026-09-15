// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/editor/widget_tree/widget_child_selector.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class WidgetQ2_1 extends ConsumerWidget {
  final WidgetEntityQ2_1 entity;
  final ProjectId projectId;
  final List<WidgetChildSelector> selector;
  const WidgetQ2_1({
    super.key,
    required this.entity,
    required this.projectId,
    required this.selector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = flutterEditorViewmodelProvider(projectId);
    final viewModel = ref.watch(provider.notifier);
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text(
          viewModel
              .getScopeVariable(from: selector, name: "displayText")
              .getOrThrow(null)
              .rawValue
              .requireType<String>(),
        ),
        ElevatedButton(
          onPressed: () {
            viewModel.setScopeVariable(
              from: selector,
              name: "displayText",
              newValue: .string(rawValue: entity.args.displayText),
            );
          },
          child: Text("変更：${entity.args.displayText}"),
        ),
      ],
    );
  }
}
