import 'package:flutter/material.dart';

class DoubleEditor extends StatelessWidget {
  final String value;
  final void Function(String newVal) onChange;

  const DoubleEditor({super.key, required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      inputFormatters: [
        .withFunction((oldValue, newValue) {
          if (!RegExp(r'[0-9]*(\.[0-9]*)?').hasMatch(newValue.text)) {
            return oldValue;
          }
          return newValue;
        }),
      ],
      onChanged: (value) {
        onChange(value);
      },
    );
  }
}
