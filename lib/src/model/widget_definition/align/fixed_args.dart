import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/align/arg.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_arguments_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_arg/widget_arg_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedAlignArgs extends WidgetArgumentsDefinition<AlignArg>
    with _$FixedAlignArgs {
  const FixedAlignArgs._();
  const factory FixedAlignArgs({
    @Default(null) WidgetEntity? child,
    required AlignmentWrapper alignment,
  }) = _FixedAlignArgs;

  @override
  dynamic getValue(AlignArg key) => switch (key) {
    .child => child,
    .alignment => alignment,
  };
  @override
  FixedAlignArgs setValue(AlignArg key, dynamic value) => switch (key) {
    .child => copyWith(child: value),
    .alignment => copyWith(alignment: value),
  };
  @override
  Map<WidgetArgDefinition, dynamic> toCommonArgs() => {
    for (final key in AlignArg.values) key.arg: getValue(key),
  };

  static const initial = FixedAlignArgs(alignment: .topLeft);
  factory FixedAlignArgs.fromCommonArgs(
    Map<WidgetArgDefinition, dynamic> args,
  ) {
    var result = initial;
    for (final key in AlignArg.values) {
      result = result.setValue(key, args[key.arg]);
    }
    return result;
  }

  factory FixedAlignArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedAlignArgsFromJson(json);
}
