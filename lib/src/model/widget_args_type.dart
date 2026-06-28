enum WidgetArgsType {
  string,
  double,
  doubleNullable,
  widgetNullable,
  widgetList,
  crossAxisAlignment;

  bool get hasChild => switch (this) {
    .string => false,
    .double => false,
    .doubleNullable => false,
    .widgetNullable => true,
    .widgetList => true,
    .crossAxisAlignment => false,
  };
}
