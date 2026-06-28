enum WidgetArgsType {
  string,
  double,
  doubleNullable,
  crossAxisAlignment,
  colorNullable,
  widgetNullable,
  widgetList,
  ;

  bool get hasChild => switch (this) {
    .string => false,
    .double => false,
    .crossAxisAlignment => false,
    .doubleNullable => false,
    .colorNullable => false,
    .widgetNullable => true,
    .widgetList => true,
  };
}
