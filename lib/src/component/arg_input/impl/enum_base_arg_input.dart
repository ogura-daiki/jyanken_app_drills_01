import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';

class EnumBaseArgInput<T extends Enum> extends StatelessWidget
    implements ArgInputValueWidgetInterface<T> {
  @override
  final void Function(T? newVal) onChange;
  @override
  final TypedArg<T> type;
  @override
  final T? value;
  final List<T> items;
  final String Function(T? value)? labelBuilder;

  const EnumBaseArgInput({
    super.key,
    required this.onChange,
    required this.type,
    required this.value,
    required this.items,
    this.labelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenuFormField<T?>(
      initialSelection: type.defaultValue,
      onSelected: (value) {
        onChange(value);
      },
      dropdownMenuEntries: [...items, if (type.nullable) null]
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
