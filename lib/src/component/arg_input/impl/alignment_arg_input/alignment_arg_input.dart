import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/model/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/typed_arg.dart';

class AlignmentArgInput extends StatelessWidget
    implements ArgInputValueWidgetInterface<AlignmentWrapper> {
  @override
  final void Function(AlignmentWrapper? newVal) onChange;

  @override
  final TypedArg<AlignmentWrapper> type;

  @override
  final AlignmentWrapper? value;

  const AlignmentArgInput({
    super.key,
    required this.onChange,
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final value = this.value ?? AlignmentWrapper.topLeft;
    return Row(
      mainAxisSize: .max,
      crossAxisAlignment: .center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .stretch,
            mainAxisSize: .min,
            children: [
              Row(
                children: [
                  Text("X"),
                  Expanded(
                    child: Slider(
                      value: value.x,
                      secondaryTrackValue: value.x,
                      secondaryActiveColor: Colors.amber,
                      min: -1,
                      max: 1,
                      divisions: null,
                      label: "${(value.x * 100).round() / 100}",
                      onChanged: (newValue) {
                        onChange(.new(x: newValue, y: value.y));
                      },
                      onChangeEnd: (newValue) {
                        onChange(.new(x: newValue, y: value.y));
                      },
                      showValueIndicator: .onDrag,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Y"),
                  Expanded(
                    child: Slider(
                      value: value.y,
                      min: -1,
                      max: 1,
                      divisions: 200,
                      label: "${(value.y * 100).round() / 100}",
                      onChanged: (newValue) {
                        onChange(.new(x: value.x, y: newValue));
                      },
                      onChangeEnd: (newValue) {
                        onChange(.new(x: value.x, y: newValue));
                      },
                      showValueIndicator: .onDrag,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
