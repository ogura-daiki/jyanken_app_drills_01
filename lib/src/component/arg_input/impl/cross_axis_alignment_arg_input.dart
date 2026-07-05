import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';

class CrossAxisAlignmentArgInput extends StatelessWidget
    implements ArgInputValueWidgetInterface<CrossAxisAlignment> {
  @override
  final CrossAxisAlignment value;
  @override
  final void Function(CrossAxisAlignment newVal) onChange;

  const CrossAxisAlignmentArgInput({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenuFormField<CrossAxisAlignment>(
      initialSelection: value,
      onSelected: (value) {
        onChange(value ?? .stretch);
      },
      dropdownMenuEntries: CrossAxisAlignment.values
          .map((ca) => DropdownMenuEntry(value: ca, label: ca.name))
          .toList(),
    );
  }
}
