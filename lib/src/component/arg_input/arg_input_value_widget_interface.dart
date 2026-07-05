interface class ArgInputValueWidgetInterface<T> {
  final T value;
  final void Function(T newVal) onChange;

  ArgInputValueWidgetInterface({required this.value, required this.onChange});
}
