import 'package:flutter/material.dart';

class StringEditor extends StatelessWidget {
  final String value;
  final void Function(String newVal) onChange;

  const StringEditor({super.key, required this.value, required this.onChange});

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
