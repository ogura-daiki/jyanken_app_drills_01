import 'package:jyanken_app_drills/src/core/result.dart';

class QuestionMatcher {
  final Result<void> Function(dynamic value) matcher;

  QuestionMatcher({required this.matcher});

  static QuestionMatcher requiredType<T>([bool nullable = false]) =>
      QuestionMatcher(
        matcher: (v) => switch (v) {
          T() => .success(null),
          Null() when nullable => .success(null),
          _ => .failure(Exception()),
        },
      );

  static QuestionMatcher requiredValue(dynamic value) => QuestionMatcher(
    matcher: (v) => switch (v == value) {
      true => .success(null),
      false => .failure(Exception()),
    },
  );
}
