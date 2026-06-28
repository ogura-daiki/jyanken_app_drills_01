import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum TextArg with WidgetArgKey {
  text(.string),
  fontSize(.double),
  color(.colorNullable);

  @override
  final WidgetArgsType type;

  const TextArg(this.type);

  static TextArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
