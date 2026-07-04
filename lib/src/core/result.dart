sealed class Result<T> {
  factory Result.success(T value) {
    return Success(value);
  }
  factory Result.failure(Exception exception) {
    return Failure(exception);
  }

  Result<V> convert<V>(V Function(T value) convert);

  T getOrThrow(Exception e);
}

class Success<T> implements Result<T> {
  final T value;
  Success(this.value);

  @override
  Result<V> convert<V>(V Function(T value) convert) {
    return .success(convert(value));
  }

  @override
  T getOrThrow(Exception e) => value;
}

class Failure<Void> implements Result<Void> {
  final Exception exception;

  Failure(this.exception);

  @override
  Result<V> convert<V>(V Function(Void value) convert) {
    return .failure(exception);
  }

  @override
  Void getOrThrow(Exception e) => throw e;
}
