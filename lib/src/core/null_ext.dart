extension NullExt<V> on V {
  T let<T>(T Function(V it) func) {
    return func(this);
  }

  T requireType<T>([Exception? ex]) => switch (this) {
    T() => this as T,
    _ => throw ex ?? Exception("この値の型は $T に変換できません"),
  };
}
