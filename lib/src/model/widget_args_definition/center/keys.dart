import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

enum CenterArgsKey with WidgetArgKey {
  child(.widget);

  @override
  final WidgetArgsType type;

  const CenterArgsKey(this.type);

  static CenterArgsKey fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
