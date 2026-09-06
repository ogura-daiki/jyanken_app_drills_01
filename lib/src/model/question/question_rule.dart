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
}
