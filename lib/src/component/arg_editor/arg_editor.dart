import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/cross_axis_alignment_editor.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/double_editor.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/impl/string_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_args_type.dart';

class ArgEditor extends StatelessWidget {
  final WidgetArgsType arg;
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
      .string => StringEditor(value: value, onChange: onChange),
      .double => DoubleEditor(value: value, onChange: onChange),
      .crossAxisAlignment => CrossAxisAlignmentEditor(
        value: value,
        onChange: onChange,
      ),
      .widget => Text("ツリーから編集"),
      .widgetList => Text("ツリーから編集"),
    };
  }
}
