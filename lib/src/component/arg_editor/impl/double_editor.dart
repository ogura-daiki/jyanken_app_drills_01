import 'package:flutter/material.dart';

class DoubleEditor extends StatelessWidget {
  final bool nullable;
  final double? value;
  final void Function(double? newVal) onChange;

  const DoubleEditor({
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
