import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/color_editor/color_editor.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/cross_axis_alignment_editor.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/double_editor.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/string_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';

class ArgEditor extends StatelessWidget {
  final WidgetArg arg;
  final dynamic value;
  final void Function(dynamic newValue) onChange;

  const ArgEditor({
    super.key,
    required this.arg,
    this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return switch (arg) {
      WidgetArgString() => StringEditor(value: value, onChange: onChange),
      WidgetArgDouble() => DoubleEditor(
        nullable: false,
        value: value,
        onChange: (v) => onChange(v as double),
      ),
      WidgetArgDoubleNullable() => DoubleEditor(
        nullable: true,
        value: value,
        onChange: onChange,
      ),
      WidgetArgColorNullable() => ColorEditor(
        nullable: true,
        value: value,
        onChange: onChange,
      ),
      WidgetArgCrossAxisAlignment() => CrossAxisAlignmentEditor(
        value: value,
        onChange: onChange,
      ),
      WidgetArgWidget() => Text("ツリーから編集"),
      WidgetArgWidgetList() => Text("ツリーから編集"),
    };
  }
}
