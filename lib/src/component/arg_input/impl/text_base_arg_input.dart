import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/typed_arg.dart';

class TextBaseArgInput<T> extends StatelessWidget implements ArgInputValueWidgetInterface<T>{
  final List<TextInputFormatter>? inputFormatters;
  final T? Function(String? str) mapFrom;
  final String? Function(T? value) mapTo;
  @override
  final TypedArg<T> type;
  @override
  final T? value;
  @override
  final void Function(T? newValue) onChange;

  const TextBaseArgInput({
    super.key,
    required this.type,
    required this.value,
    this.inputFormatters,
    required this.mapFrom,
    required this.mapTo,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: mapTo(value),
      inputFormatters: inputFormatters,
      onChanged: (value) {
        var newVal = mapFrom(value);
        onChange(newVal);
      },
    );
  }
}
