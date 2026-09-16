import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/popup_card/popup_card.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';

class StringListArgInput extends StatefulHookConsumerWidget
    implements ArgInputValueWidgetInterface<List<String>> {
  @override
  final bool nullable = false;
  @override
  final List<String> defaultValue;
  @override
  final List<String>? value;
  @override
  final void Function(List<String>? newVal) onChange;

  const StringListArgInput({
    super.key,
    required this.value,
    required this.onChange,
  }) : defaultValue = const [];

  @override
  createState() => _StringListEditorState();
}

class _StringListEditorState extends ConsumerState<StringListArgInput> {
  @override
  Widget build(BuildContext context) {
    final menuController = useMemoized(() => MenuController());
    return PopupCard(
      controller: menuController,
      defaultPopupHeight: 300.0,
      popup: HookBuilder(
        builder: (context) {
          final value = useState([...(widget.value ?? widget.defaultValue)]);
          return ListView.separated(
            padding: const .all(8),
            itemCount: value.value.length + 1,
            itemBuilder: (context, index) {
              if (index >= value.value.length) {
                return Wrap(
                  key: ValueKey(index),
                  runAlignment: .spaceEvenly,
                  direction: .horizontal,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    FilledButton.tonalIcon(
                      onPressed: () {
                        value.value = [...value.value, ""];
                      },
                      label: Text("追加"),
                      icon: Icon(Icons.add),
                    ),
                    FilledButton.icon(
                      onPressed: () {
                        widget.onChange(value.value);
                      },
                      label: Text("更新"),
                      icon: Icon(Icons.upload),
                    ),
                  ],
                );
              }

              final text = value.value[index];

              return Row(
                key: ValueKey(index),
                children: [
                  Expanded(
                    child: ArgInput(
                      arg: .new(
                        name: "",
                        defaultValue: .string(rawValue: text),
                      ),
                      value: .string(rawValue: text),
                      onChange: (newVal) {
                        final newList = [...value.value];
                        newList[index] = newVal.rawValue as String;
                        value.value = newList;
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      final newList = [...value.value];
                      newList.removeAt(index);
                      value.value = newList;
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 8),
          );
        },
      ),
      child: InkWell(
        onTap: () {
          menuController.open();
        },
        child: Text(
          (widget.value ?? widget.defaultValue)
              .map((e) => '"$e"')
              .join(", ")
              .let((v) => "[$v]"),
        ),
      ),
    );
  }
}
