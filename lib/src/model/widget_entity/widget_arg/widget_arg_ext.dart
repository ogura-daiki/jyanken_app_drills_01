import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

extension WidgetArgExt on WidgetArg {
  TypedArg<dynamic> toTyped() => switch (this) {
    WidgetArgString a => a.toTypedImpl(),
    WidgetArgDouble a => a.toTypedImpl(),
    WidgetArgDoubleNullable a => a.toTypedImpl(),
    WidgetArgColorNullable a => a.toTypedImpl(),
    WidgetArgCrossAxisAlignment a => a.toTypedImpl(),
    WidgetArgWidget a => a.toTypedImpl(),
    WidgetArgWidgetList a => a.toTypedImpl(),
  };
}

extension WidgetArgStringImpl on WidgetArgString {
  TypedArg<String> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgDoubleImpl on WidgetArgDouble {
  TypedArg<double> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgDoubleNullableImpl on WidgetArgDoubleNullable {
  TypedArg<double> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgColorNullableImpl on WidgetArgColorNullable {
  TypedArg<ColorWrapper> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgCrossAxisAlignmentImpl on WidgetArgCrossAxisAlignment {
  TypedArg<CrossAxisAlignment> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgWidgetImpl on WidgetArgWidget {
  TypedArg<WidgetEntity> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgWidgetListImpl on WidgetArgWidgetList {
  TypedArg<List<WidgetEntity>> toTypedImpl() => .nonNull(defaultValue);
}
