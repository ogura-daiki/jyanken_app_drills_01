import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/alignment/alignment_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/align/arg.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_definition/widget_arguments.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
import 'package:jyanken_app_drills/src/model/widget_argument/widget_argument.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedAlignArgs extends WidgetArguments<AlignArg>
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
  Set<WidgetArgument> toCommonArgs() => {
    for (final key in AlignArg.values)
      .new(
        definition: key.definition,
        value: key.definition.defaultValue.copyWithDynamic(
          rawValue: getValue(key),
        ),
      ),
  };

  static const initial = FixedAlignArgs(alignment: .topLeft);
  factory FixedAlignArgs.fromCommonArgs(Set<WidgetArgument> args) {
    var result = initial;
    for (final key in AlignArg.values) {
      result = result.setValue(key, args.findValue(key).rawValue);
    }
    return result;
  }

  factory FixedAlignArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedAlignArgsFromJson(json);
}
