import 'package:jyanken_app_drills/src/model/type/text_style/text_style_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arg_key.dart';

enum TextArg<T> with WidgetArgKey {
  text<String>(.nonNull("")),
  style<TextStyleWrapper>(.nullable());

  @override
  final TypedArg<T> defaultValue;

  const TextArg(this.defaultValue);

  static TextArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
