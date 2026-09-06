import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/animated_visibility.dart';
import 'package:jyanken_app_drills/src/component/error_badge.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor_viewmodel.dart';
import 'package:jyanken_app_drills/src/component/result_chip.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/question/question.dart';
import 'package:jyanken_app_drills/src/model/question/question_rule.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_type.dart';
import 'package:jyanken_app_drills/src/routes/routes.dart';
import 'package:jyanken_app_drills/src/theme/app_colors.dart';

class ScreenQuestion extends StatefulHookConsumerWidget {
  final Question question;

  const ScreenQuestion({super.key, required this.question});

  @override
  createState() => _ScreenQuestionState();
}

class _ScreenQuestionState extends ConsumerState<ScreenQuestion> {
  bool showMenu = false;
  List<({Result<void> result, QuestionRule<dynamic> rule})> validateResultList =
      [];

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      flutterEditorViewmodelProvider(widget.question.projectId),
    );
    validateResultList = useMemoized(
      () => widget.question.validators
          .map((e) => (rule: e, result: e.validate(state.treeRoot)))
          .toList(),
      [state.treeRoot],
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        return switch (MediaQuery.of(context).orientation) {
          .portrait => verticalLayout(),
          .landscape => horizontalLayout(),
        };
      },
    );
  }

  Widget verticalLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.question.name),
        leading: IconButton(
          onPressed: onBackPressed,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          editor(),
          AnimatedVisibility(
            visible: showMenu,
            duration: .new(milliseconds: 300),
            child: validateListView(dodgeMenuButton: true),
          ),
          Align(
            alignment: .topLeft,
            child: Padding(
              padding: const .all(16),
              child: ErrorBadge(
                errorCount: validateResultList
                    .map((e) => e.result)
                    .whereType<Failure<void>>()
                    .length,
                child: IconButton.filledTonal(
                  style: IconButton.styleFrom(
                    minimumSize: .square(40),
                    padding: .zero,
                    iconSize: 24,
                  ),
                  onPressed: onMenuButtonClick,
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget horizontalLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.question.name),
        leading: IconButton(
          onPressed: onBackPressed,
          icon: Icon(Icons.arrow_back),
        ),
        actionsPadding: const .only(right: 16),
        actions: [
          Builder(
            builder: (context) {
              final failureCount = validateResultList
                  .map((e) => e.result)
                  .whereType<Failure<void>>()
                  .length;
              return ResultChip(
                success: failureCount <= 0,
                label: Text(
                  "クリア条件: ${validateResultList.length - failureCount}/${validateResultList.length}",
                ),
                onPressed: onMenuButtonClick,
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          editor(),
          AnimatedVisibility(
            visible: showMenu,
            duration: .new(milliseconds: 300),
            child: validateListView(dodgeMenuButton: false),
          ),
        ],
      ),
    );
  }

  Widget editor() => FlutterEditor(
    allowTypes: WidgetType.findByCategories({.common}).toSet(),
    projectId: widget.question.projectId,
  );

  Widget validateListView({required bool dodgeMenuButton}) {
    return Material(
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          SizedBox(
            height: 32 + 40,
            child: Padding(
              padding: dodgeMenuButton
                  ? const .only(left: 32 + 40)
                  : const .only(left: 16),
              child: Align(
                alignment: .centerLeft,
                child: Text(
                  "クリア条件",
                  style: TextTheme.of(context).headlineMedium,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: validateResultList.length,
              itemBuilder: (context, index) {
                final validate = validateResultList[index];

                return ListTile(
                  leading: switch (validate.result) {
                    Success() => Icon(
                      Icons.check,
                      color: Theme.of(context).appColors.success,
                    ),
                    Failure() => Icon(
                      Icons.error,
                      color: ColorScheme.of(context).error,
                    ),
                  },
                  title: Text(validate.rule.errorMessage),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onMenuButtonClick() {
    setState(() {
      showMenu = !showMenu;
    });
  }

  void onBackPressed() {
    QuestionListScreenRoute().go(context);
  }
}
