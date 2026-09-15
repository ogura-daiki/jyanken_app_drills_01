import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_widget/widgets/widget_container.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/core/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/question/question.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

final class Questions {
  const Questions._();

  static final List<Question> values = .unmodifiable(<Question>[
    .new(
      index: 0,
      projectId: .new("q1-0"),
      name: "文字の表示",
      initialRoot: .new(id: .create(), args: .initial),
      validators: [
        .new(
          valSelector: (root) => root.args.child,
          matcher: .requiredType<WidgetEntityText>(),
          errorMessage: "ルート要素の直下にTextを配置してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              .requireType<WidgetEntityText>()
              .getOrThrow(null)
              .args
              .text,
          matcher: .requiredValue("こんにちは"),
          errorMessage: "Textに こんにちは と表示してください",
        ),
      ],
    ),
    .new(
      index: 1,
      projectId: .new("q1-1"),
      name: "縦に並べる",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .column(
            id: .create(),
            args: .new(
              crossAxisAlignment: .stretch,
              children: [
                .container(
                  id: .create(),
                  args: .new(
                    color: .fromColor(Colors.red),
                    height: 60,
                    child: .text(
                      id: .create(),
                      args: .new(text: "下側に色付きContainerを追加"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1],
          matcher: .requiredType<WidgetEntityContainer>(),
          errorMessage: "ColumnにContainerを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .height,
          matcher: .requiredType<double>(),
          errorMessage: "追加したContainerに高さを設定してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .color,
          matcher: .requiredType<ColorWrapper>(),
          errorMessage: "追加したContainerに色を設定してください",
        ),
      ],
    ),
    .new(
      index: 2,
      projectId: .new("q1-2"),
      name: "横に並べる",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .row(
            id: .create(),
            args: .new(
              crossAxisAlignment: .stretch,
              children: [
                .container(
                  id: .create(),
                  args: .new(
                    color: .fromColor(Colors.red),
                    child: .text(
                      id: .create(),
                      args: .new(text: "右側に色付きContainerを追加"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) =>
              root.args.child?.requireType<WidgetEntityRow>().args.children[1],
          matcher: .requiredType<WidgetEntityContainer>(),
          errorMessage: "RowにContainerを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityRow>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .width,
          matcher: .requiredType<double>(),
          errorMessage: "追加したContainerに横幅を設定してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityRow>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .color,
          matcher: .requiredType<ColorWrapper>(),
          errorMessage: "追加したContainerに色を設定してください",
        ),
      ],
    ),
  ]);

  static Result<Question> findById(ProjectIdTypeQuestion projectId) {
    final index = values.indexWhere((e) => e.projectId == projectId);
    if (index < 0) return .failure(Exception());
    return .success(values[index]);
  }
}
