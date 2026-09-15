import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/variable_arg_input/variable_arg_input.dart';
import 'package:jyanken_app_drills/src/model/type/scope_definition/scope_definition.dart';

class ScopeArgInput extends HookWidget
    implements ArgInputValueWidgetInterface<ScopeDefinition> {
  @override
  final bool nullable = false;
  @override
  final ScopeDefinition defaultValue;
  @override
  final ScopeDefinition? value;
  @override
  final void Function(ScopeDefinition? newVal) onChange;

  const ScopeArgInput({super.key, required this.value, required this.onChange})
    : defaultValue = const .new(variables: []);

  @override
  Widget build(BuildContext context) {
    final v = value ?? defaultValue;
    final variables = useState([...v.variables]);
    return Column(
      spacing: 4,
      crossAxisAlignment: .stretch,
      children: [
        ...variables.value.indexed.map((e) {
          return VariableArgInput(
            value: e.$2,
            onChange: (newVal) {
              final newVariables = [...variables.value];
              newVariables[e.$1] = newVal!;
              variables.value = newVariables;
            },
          );
        }),
        Row(
          children: [
            IconButton(
              onPressed: () {
                variables.value = [
                  ...variables.value,
                  .new(
                    name: "",
                    initialValue: .fromEnum(.string),
                    value: .fromEnum(.string),
                  ),
                ];
              },
              icon: Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () {
                onChange(v.copyWith(variables: [...variables.value]));
              },
              child: Text("更新"),
            ),
          ],
        ),
      ],
    );
  }
}
