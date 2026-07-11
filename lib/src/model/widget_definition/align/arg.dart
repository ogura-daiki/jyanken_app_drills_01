import 'package:jyanken_app_drills/src/model/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arg_key.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

enum AlignArg<T> with WidgetArgKey<T> {
  child<WidgetEntity>(.nullable()),
  alignment<AlignmentWrapper>(.nonNull(.topLeft));

  @override
  final TypedArg<T> defaultValue;

  const AlignArg(this.defaultValue);

  static AlignArg fromName(String name) =>
      values.singleWhere((e) => e.name == name);
}
