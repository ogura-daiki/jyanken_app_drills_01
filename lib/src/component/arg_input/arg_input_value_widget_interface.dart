interface class ArgInputValueWidgetInterface<T> {
  final bool nullable;
  final T? value;
  final T? defaultValue;
  final void Function(T? newVal) onChange;

  ArgInputValueWidgetInterface({
    required this.nullable,
    required this.value,
    required this.defaultValue,
    required this.onChange,
  });
}
