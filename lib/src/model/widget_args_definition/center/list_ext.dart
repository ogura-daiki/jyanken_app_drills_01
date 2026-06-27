import 'package:jyanken_app_drills/src/model/widget_args_definition/center/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/fixed_args.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';

extension CenterArgsListExt on List<CenterArgsDefinition> {
  FixedCenterArgs get fixed {
    FixedCenterArgs result = .initial;
    for (final i in this) {
      result = switch (i) {
        CenterArgsDefinition(:final value) => result.copyWith(child: value),
      };
    }
    return result;
  }

  WidgetArgsWrapper toArgs() => .new(
    type: .center,
    args: Map.fromEntries(map((e) => .new(e.key.toArg(), e.value))),
  );
}
