import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/arg_input/impl/enum_base_arg_input.dart';
import 'package:jyanken_app_drills/src/component/popup_card/popup_card.dart';
import 'package:jyanken_app_drills/src/model/type/variable/variable.dart';
import 'package:jyanken_app_drills/src/model/variable_value/variable_value.dart';

class VariableArgInput extends StatefulHookConsumerWidget
    implements ArgInputValueWidgetInterface<Variable> {
  @override
  final bool nullable = false;
  @override
  final Variable defaultValue;
  @override
  final Variable? value;
  @override
  final void Function(Variable? newVal) onChange;

  const VariableArgInput({
    super.key,
    required this.value,
    required this.onChange,
  }) : defaultValue = const .new(
         name: "",
         initialValue: .string(rawValue: ""),
         value: .string(rawValue: ""),
       );

  @override
  createState() => _VariableEditorState();
}

class _VariableEditorState extends ConsumerState<VariableArgInput> {
  @override
  Widget build(BuildContext context) {
    final menuController = useMemoized(() => MenuController());
    final theme = Theme.of(context);
    return PopupCard(
      controller: menuController,
      defaultPopupHeight: 300.0,
      popup: HookBuilder(
        builder: (context) {
          final defaultVar = widget.value ?? widget.defaultValue;
          final value = useState(defaultVar.initialValue);
          final name = useTextEditingController(text: defaultVar.name);
          return Column(
            crossAxisAlignment: .stretch,
            children: [
              Text("変数名", style: theme.textTheme.labelSmall),
              TextFormField(controller: name),
              Text("値", style: theme.textTheme.labelSmall),
              EnumBaseArgInput<VariableValueEnum>(
                nullable: false,
                defaultValue: .string,
                value: .string,
                items: VariableValueEnum.whereCanCreateVariable.toList(),
                onChange: (newVal) {
                  value.value = .fromEnum(newVal!);
                },
              ),
              ArgInput(
                arg: .new(
                  name: "",
                  defaultValue: .fromEnum(value.value.toEnum()),
                ),
                value: value.value,
                onChange: (newValue) {
                  value.value = newValue;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  widget.onChange(
                    .new(
                      name: name.text,
                      initialValue: value.value,
                      value: value.value,
                    ),
                  );
                  menuController.close();
                },
                child: Text("決定"),
              ),
            ],
          );
        },
      ),
      child: InkWell(
        onTap: () {
          menuController.open();
        },
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Text("変数名", style: theme.textTheme.labelSmall),
            Padding(
              padding: const .only(left: 4),
              child: Text(
                widget.value?.name ?? "未定義",
                style: theme.textTheme.bodyMedium,
                overflow: .ellipsis,
              ),
            ),
            Text("値", style: theme.textTheme.labelSmall),
            Padding(
              padding: const .only(left: 4),
              child: variableToDisplay(widget.value?.initialValue),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: ちゃんとしたウィジェットにする
Widget variableToDisplay(VariableValue? v) {
  if (v == null) {
    return Text("null");
  }

  return switch (v) {
    VariableValueString() ||
    VariableValueDouble() ||
    VariableValueInt() ||
    VariableValueDoubleNullable() ||
    VariableValueCrossAxisAlignment() ||
    VariableValueMainAxisAlignment() ||
    VariableValueMainAxisSize() ||
    VariableValueAlignment() => Text("${v.rawValue}"),
    VariableValueColorNullable(:var rawValue) => Text(
      rawValue?.argbString.toString() ?? "null",
    ),

    VariableValueStringList() => Wrap(
      children: v.rawValue
          .map((e) => variableToDisplay(.string(rawValue: e)))
          .toList(),
    ),
    VariableValueHandsResult() ||
    VariableValueTextStyle() ||
    VariableValueWidget() ||
    VariableValueWidgetList() ||
    VariableValueVariable() ||
    VariableValueScope() => Text("非対応"),
  };
}
