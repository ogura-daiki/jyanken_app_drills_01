import 'package:flutter/material.dart';

class CrossAxisAlignmentEditor extends StatelessWidget {
  final CrossAxisAlignment value;
  final void Function(CrossAxisAlignment newVal) onChange;

  const CrossAxisAlignmentEditor({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenuFormField<CrossAxisAlignment>(
      initialSelection: .stretch,
      onSelected: (value) {
        onChange(value ?? .stretch);
      },
      dropdownMenuEntries: CrossAxisAlignment.values
          .map((ca) => DropdownMenuEntry(value: ca, label: ca.name))
          .toList(),
    );
  }
}
