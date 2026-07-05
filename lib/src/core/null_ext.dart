extension NullExt<V> on V {
  T let<T>(T Function(V it) func) {
    return func(this);
  }
}
