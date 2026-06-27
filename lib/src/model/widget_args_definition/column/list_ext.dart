import 'package:jyanken_app_drills/src/model/widget_args_definition/column/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';

extension ColumnArgsListExt on List<ColumnArgsDefinition> {
  FixedColumnArgs get fixed {
    FixedColumnArgs result = .initial;
    for (final i in this) {
      result = switch (i) {
        ColumnArgsDefinitionCrossAxisAlignment(:final value) => result.copyWith(
          crossAxisAlignment: value,
        ),
        ColumnArgsDefinitionChildren(:final value) => result.copyWith(
          children: [...result.children, ...value],
        ),
      };
    }
    return result;
  }

  WidgetArgsWrapper toArgs() => .new(
    type: .column,
    args: Map.fromEntries(map((e) => .new(e.key.toArg(), e.value))),
  );
}
