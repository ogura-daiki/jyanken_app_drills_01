import 'package:flutter/material.dart';

class DoubleEditor extends StatelessWidget {
  final double value;
  final void Function(double newVal) onChange;

  const DoubleEditor({super.key, required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: "$value",
      inputFormatters: [
        .withFunction((oldValue, newValue) {
          if (!RegExp(r'[0-9]*(\.[0-9]*)?').hasMatch(newValue.text)) {
            return oldValue;
          }
          return newValue;
        }),
      ],
      onChanged: (value) {
        onChange(double.tryParse(value) ?? 0.0);
      },
    );
  }
}
