import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';

class EnumBaseArgInput<T extends Enum> extends StatelessWidget
    implements ArgInputValueWidgetInterface<T> {
  @override
  final void Function(T? newVal) onChange;
  @override
  final bool nullable;
  @override
  final T? defaultValue;
  @override
  final T? value;
  final List<T> items;
  final String Function(T? value)? labelBuilder;

  const EnumBaseArgInput({
    super.key,
    required this.nullable,
    required this.defaultValue,
    required this.value,
    required this.items,
    required this.onChange,
    this.labelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final initialValue = nullable ? value : (value ?? defaultValue);
    return DropdownMenuFormField<T?>(
      initialSelection: initialValue,
      onSelected: (newVal) {
        onChange(newVal);
      },
      dropdownMenuEntries: [...items, if (value is VariableTypeNullable) null]
          .map(
            (ca) => DropdownMenuEntry(
              value: ca,
              label: labelBuilder?.call(ca) ?? ca?.name ?? "null",
            ),
          )
          .toList(),
    );
  }
}
