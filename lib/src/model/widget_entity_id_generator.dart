class WidgetEntityIdGenerator {
  WidgetEntityIdGenerator._();
  static final i = WidgetEntityIdGenerator._();

  int _id = 0;
  int getId() => _id++;
}
