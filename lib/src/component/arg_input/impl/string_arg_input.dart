import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';

class StringArgInput extends StatelessWidget
    implements ArgInputValueWidgetInterface<String> {
  @override
  final String value;
  @override
  final void Function(String newVal) onChange;

  const StringArgInput({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      onChanged: (value) {
        onChange(value);
      },
    );
  }
}
