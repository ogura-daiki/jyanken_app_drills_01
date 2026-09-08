import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';

class TextBaseArgInput<T> extends StatelessWidget
    implements ArgInputValueWidgetInterface<T> {
  final List<TextInputFormatter>? inputFormatters;
  final T? Function(String? str) mapFrom;
  final String? Function(T? value) mapTo;
  @override
  final bool nullable;
  @override
  final T? defaultValue;
  @override
  final T? value;
  @override
  final void Function(T? newValue) onChange;

  const TextBaseArgInput({
    super.key,
    required this.nullable,
    this.defaultValue,
    required this.value,
    this.inputFormatters,
    required this.mapFrom,
    required this.mapTo,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final initialValue = nullable ? value : (value ?? defaultValue);
    return TextFormField(
      initialValue: mapTo(initialValue),
      inputFormatters: inputFormatters,
      onChanged: (newVal) {
        onChange(mapFrom(newVal));
      },
    );
  }
}
