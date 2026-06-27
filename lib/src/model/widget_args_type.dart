enum WidgetArgsType {
  string,
  double,
  widget,
  widgetList,
  crossAxisAlignment;

  bool get hasChild => switch (this) {
    .string => false,
    .double => false,
    .widget => true,
    .widgetList => true,
    .crossAxisAlignment => false,
  };
}
