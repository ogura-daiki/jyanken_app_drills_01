import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/model/type/jyanken/hand.dart';
import 'package:jyanken_app_drills/src/model/type/jyanken/hand_result.dart';
import 'package:jyanken_app_drills/src/model/type/q3_3/hands_result.dart';

class HandsResultArgInput extends StatefulHookConsumerWidget
    implements ArgInputValueWidgetInterface<HandsResult> {
  @override
  final bool nullable = false;
  @override
  final HandsResult defaultValue;
  @override
  final HandsResult? value;
  @override
  final void Function(HandsResult? newVal) onChange;

  const HandsResultArgInput({
    super.key,
    required this.value,
    required this.onChange,
  }) : defaultValue = const HandsResult();

  @override
  createState() => _HandsResultEditorState();
}

class _HandsResultEditorState extends ConsumerState<HandsResultArgInput> {
  @override
  Widget build(BuildContext context) {
    final defaultVar = widget.value ?? widget.defaultValue;
    return Padding(
      padding: const .all(8.0),
      child: Column(
        spacing: 8,
        children: [
          Text("相手：✊ で"),
          handMapInput(defaultVar.vsRock, (newVal) {
            widget.onChange(defaultVar.copyWith(vsRock: newVal));
          }),
          Text("相手：✌ で"),
          handMapInput(defaultVar.vsScissors, (newVal) {
            widget.onChange(defaultVar.copyWith(vsScissors: newVal));
          }),
          Text("相手：✋ で"),
          handMapInput(defaultVar.vsPaper, (newVal) {
            widget.onChange(defaultVar.copyWith(vsPaper: newVal));
          }),
        ],
      ),
    );
  }

  Widget handMapInput(
    Map<Hand, HandResult> handMap,
    void Function(Map<Hand, HandResult> newVal) onChange,
  ) {
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      children: handMap.keys
          .map(
            (myHand) => [
              Text("自分：${myHand.displayIconString} のとき"),
              DropdownButton<HandResult>(
                value: handMap[myHand],
                items: HandResult.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.displayString),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  final newVal = {...handMap};
                  newVal[myHand] = value;
                  onChange(newVal);
                },
              ),
              SizedBox(height: 4),
            ],
          )
          .flat<Widget>()
          .toList(),
    );
  }
}

extension on Iterable {
  Iterable<T> flat<T>() sync* {
    for (final v in this) {
      if (v is Iterable) {
        yield* v.flat();
      } else {
        yield v;
      }
    }
  }
}
