import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/question/question_rule.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const Question._();
  const factory Question({
    required int index,
    required String projectId,
    required String name,
    required WidgetEntityRoot initialRoot,

    /// required List&lt;QuestionDescription$gt; descriptions,
    ///
    /// QuestionDescription({
    ///   required String descriptionText,
    ///   required String descriptionAssetImagePath,
    /// })
    ///
    required List<QuestionRule> validators,
  }) = _Question;
}
