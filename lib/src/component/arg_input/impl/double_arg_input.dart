import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';

class DoubleArgInput extends StatelessWidget
    implements ArgInputValueWidgetInterface<double?> {
  final bool nullable;
  @override
  final double? value;
  @override
  final void Function(double? newVal) onChange;

  const DoubleArgInput({
    super.key,
    required this.nullable,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value?.toString(),
      inputFormatters: [
        .withFunction((oldValue, newValue) {
          if (!RegExp(r'[0-9]*(\.[0-9]*)?').hasMatch(newValue.text)) {
            return oldValue;
          }
          return newValue;
        }),
      ],
      onChanged: (value) {
        var newVal = double.tryParse(value);
        if (!nullable) {
          newVal ??= 0.0;
        }
        onChange(newVal);
      },
    );
  }
}
