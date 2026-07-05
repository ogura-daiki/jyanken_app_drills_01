import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/color_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/enum_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/text_base_arg_input.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_ext.dart';

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
      WidgetArgString a => TextBaseArgInput<String>(
        type: a.toTypedImpl(),
        value: value,
        mapFrom: (v) => v,
        mapTo: (v) => v,
        onChange: onChange,
      ),
      WidgetArgDouble a => TextBaseArgInput<double>(
        type: a.toTypedImpl(),
        value: value,
        mapFrom: (String? str) => str?.let(double.tryParse) ?? 0.0,
        mapTo: (double? value) => value?.toString() ?? "",
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]*(\.[0-9]*)?')),
        ],
        onChange: onChange,
      ),
      WidgetArgDoubleNullable a => TextBaseArgInput<double>(
        type: a.toTypedImpl(),
        value: value,
        mapFrom: (String? str) => str?.let(double.tryParse),
        mapTo: (double? value) => value?.toString(),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]*(\.[0-9]*)?')),
        ],
        onChange: onChange,
      ),
      WidgetArgColorNullable() => ColorEditor(
        nullable: true,
        value: value,
        onChange: onChange,
      ),
      WidgetArgCrossAxisAlignment a => EnumBaseArgInput(
        onChange: onChange,
        value: value,
        type: a.toTypedImpl(),
        items: CrossAxisAlignment.values,
      ),
      WidgetArgWidget() => Text("ツリーから編集"),
      WidgetArgWidgetList() => Text("ツリーから編集"),
    };
  }
}
