import 'package:jyanken_app_drills/src/core/result.dart';

class QuestionMatchException implements Exception {
  final String message;

  const QuestionMatchException(this.message);
}

class QuestionMatcher {
  final Result<void, QuestionMatchException> Function(dynamic value) matcher;

  QuestionMatcher({required this.matcher});

  static QuestionMatcher requiredType<T>([bool nullable = false]) =>
      QuestionMatcher(
        matcher: (v) => switch (v) {
          T() => .success(null),
          Null() when nullable => .success(null),
          _ => .failure(QuestionMatchException("$v が次の型ではありません。 $T")),
        },
      );

  static QuestionMatcher requiredValue(dynamic value) => QuestionMatcher(
    matcher: (v) => switch (v == value) {
      true => .success(null),
      false => .failure(.new("$v が次の値ではありません。 $value")),
    },
  );
}
