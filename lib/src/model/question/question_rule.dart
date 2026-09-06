import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/question/question_matcher.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

class QuestionRule<T> {
  final T? Function(WidgetEntityRoot root) valSelector;
  final QuestionMatcher matcher;
  final String errorMessage;

  QuestionRule({
    required this.valSelector,
    required this.matcher,
    required this.errorMessage,
  });

  Result<void> validate(WidgetEntityRoot root) {
    dynamic val;
    try {
      val = valSelector.call(root);
    } catch (e) {
      val = e;
    }

    try {
      return matcher.matcher.call(val);
    } catch (e) {
      if (e is Exception) {
        return .failure(e);
      }
      if (e is Error) {
        return .failure(
          Exception("不明なエラー：${e.runtimeType}, stackTrace:${e.stackTrace}"),
        );
      }
      return .failure(Exception("不明なエラー:$e"));
    }
  }
}
