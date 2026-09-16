sealed class Result<T, E extends Exception> {
  factory Result.success(T value) {
    return Success(value);
  }
  factory Result.failure(E exception) {
    return Failure(exception);
  }

  Result<V, E> convert<V>(V Function(T value) convert);

  ///
  ///Success：Resultの値を取得する。
  ///
  ///Failure：渡された例外をスローする。　nullが渡された時は自分の持つ例外を再度スローする。
  T getOrThrow(E? e);
}

class Success<T, E extends Exception> implements Result<T, E> {
  final T value;
  Success(this.value);

  @override
  Result<V, E> convert<V>(V Function(T value) convert) {
    return .success(convert(value));
  }

  @override
  T getOrThrow(Exception? e) => value;
}

class Failure<Void, E extends Exception> implements Result<Void, E> {
  final E exception;

  Failure(this.exception);

  @override
  Result<V, E> convert<V>(V Function(Void value) convert) {
    return .failure(exception);
  }

  @override
  Void getOrThrow(Exception? e) => throw e ?? exception;
}
