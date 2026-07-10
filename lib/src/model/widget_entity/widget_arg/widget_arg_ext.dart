import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

extension WidgetArgDefinitionExt on WidgetArgDefinition {
  TypedArg<dynamic> toTyped() => switch (this) {
    WidgetArgDefinitionString a => a.toTypedImpl(),
    WidgetArgDefinitionDouble a => a.toTypedImpl(),
    WidgetArgDefinitionDoubleNullable a => a.toTypedImpl(),
    WidgetArgDefinitionColorNullable a => a.toTypedImpl(),
    WidgetArgDefinitionCrossAxisAlignment a => a.toTypedImpl(),
    WidgetArgDefinitionWidget a => a.toTypedImpl(),
    WidgetArgDefinitionWidgetList a => a.toTypedImpl(),
  };
}

extension WidgetArgDefinitionStringImpl on WidgetArgDefinitionString {
  TypedArg<String> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgDefinitionDoubleImpl on WidgetArgDefinitionDouble {
  TypedArg<double> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgDefinitionDoubleNullableImpl
    on WidgetArgDefinitionDoubleNullable {
  TypedArg<double> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgDefinitionColorNullableImpl
    on WidgetArgDefinitionColorNullable {
  TypedArg<ColorWrapper> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgDefinitionCrossAxisAlignmentImpl
    on WidgetArgDefinitionCrossAxisAlignment {
  TypedArg<CrossAxisAlignment> toTypedImpl() => .nonNull(defaultValue);
}

extension WidgetArgDefinitionWidgetImpl on WidgetArgDefinitionWidget {
  TypedArg<WidgetEntity> toTypedImpl() => .nullable(defaultValue);
}

extension WidgetArgDefinitionWidgetListImpl on WidgetArgDefinitionWidgetList {
  TypedArg<List<WidgetEntity>> toTypedImpl() => .nonNull(defaultValue);
}
