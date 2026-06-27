import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum TextArgsKey with WidgetArgKey {
  text(.string),
  fontSize(.double);

  @override
  final WidgetArgsType type;

  const TextArgsKey(this.type);

  static TextArgsKey fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
