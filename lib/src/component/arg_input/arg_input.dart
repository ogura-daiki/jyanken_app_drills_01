// ignore_for_file: unnecessary_type_check

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/alignment_arg_input/alignment_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/color_arg_input/color_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/enum_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/text_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/text_style_arg_input/text_style_arg_input.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/argument_definition/argument_definition.dart';
import 'package:jyanken_app_drills/src/model/type/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';

class ArgInput extends StatelessWidget {
  final ArgumentDefinition arg;
  final VariableValue value;
  final void Function(VariableValue newValue) onChange;

  const ArgInput({
    super.key,
    required this.arg,
    required this.value,
    required this.onChange,
  });

  void notifyValue(dynamic newVal) {
    onChange(value.copyWithDynamic(rawValue: newVal));
  }

  @override
  Widget build(BuildContext context) {
    return switch (value) {
      VariableValueString a => TextBaseArgInput<String>(
        nullable: a is VariableTypeNullable,
        value: a.rawValue,
        mapFrom: (v) => v,
        mapTo: (v) => v,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueDouble a => TextBaseArgInput<double>(
        nullable: a is VariableTypeNullable,
        value: a.rawValue,
        mapFrom: (String? str) => str?.let(double.tryParse) ?? 0.0,
        mapTo: (double? value) => value?.toString() ?? "",
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]*(\.[0-9]*)?')),
        ],
        onChange: (v) => notifyValue(v),
      ),
      VariableValueDoubleNullable a => TextBaseArgInput<double>(
        nullable: a is VariableTypeNullable,
        value: a.rawValue,
        mapFrom: (String? str) => str?.let(double.tryParse),
        mapTo: (double? value) => value?.toString(),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]*(\.[0-9]*)?')),
        ],
        onChange: (v) => notifyValue(v),
      ),
      VariableValueColorNullable a => ColorEditor(
        nullable: a is VariableTypeNullable,
        defaultValue: arg.defaultValue.rawValue as ColorWrapper?,
        value: a.rawValue,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueCrossAxisAlignment a => EnumBaseArgInput(
        nullable: a is VariableTypeNullable,
        defaultValue: arg.defaultValue.rawValue as CrossAxisAlignment?,
        value: a.rawValue,
        items: CrossAxisAlignment.values,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueMainAxisAlignment a => EnumBaseArgInput(
        nullable: a is VariableTypeNullable,
        defaultValue: arg.defaultValue.rawValue as MainAxisAlignment?,
        value: a.rawValue,
        items: MainAxisAlignment.values,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueMainAxisSize a => EnumBaseArgInput(
        value: a.rawValue,
        nullable: a is VariableTypeNullable,
        defaultValue: arg.defaultValue.rawValue as MainAxisSize?,
        items: MainAxisSize.values,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueWidget() || VariableValueWidgetList() => Text("ツリーから編集"),
      VariableValueAlignment a => AlignmentArgInput(
        value: a.rawValue,
        nullable: a is VariableTypeNullable,
        defaultValue: arg.defaultValue.rawValue as AlignmentWrapper?,
        onChange: (v) => notifyValue(v),
      ),
      VariableValueTextStyle a => TextStyleArgInput(
        value: a.rawValue,
        onChange: (v) => notifyValue(v),
      ),
    };
  }
}
