import 'package:jyanken_app_drills/src/core/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/question/question.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

final class Questions {
  const Questions._();

  static final List<Question> values = .unmodifiable(<Question>[
    .new(
      index: 0,
      projectId: "q1-0",
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
  ]);
}
