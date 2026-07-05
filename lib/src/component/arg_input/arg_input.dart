import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/color_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/cross_axis_alignment_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/double_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/string_arg_input.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';

class ArgInput extends StatelessWidget {
  final WidgetArg arg;
  final dynamic value;
  final void Function(dynamic newValue) onChange;

  const ArgInput({
    super.key,
    required this.arg,
    this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return switch (arg) {
      WidgetArgString() => StringArgInput(value: value, onChange: onChange),
      WidgetArgDouble() => DoubleArgInput(
        nullable: false,
        value: value,
        onChange: (v) => onChange(v as double),
      ),
      WidgetArgDoubleNullable() => DoubleArgInput(
        nullable: true,
        value: value,
        onChange: onChange,
      ),
      WidgetArgColorNullable() => ColorEditor(
        nullable: true,
        value: value,
        onChange: onChange,
      ),
      WidgetArgCrossAxisAlignment() => CrossAxisAlignmentArgInput(
        value: value,
        onChange: onChange,
      ),
      WidgetArgWidget() => Text("ツリーから編集"),
      WidgetArgWidgetList() => Text("ツリーから編集"),
    };
  }
}
