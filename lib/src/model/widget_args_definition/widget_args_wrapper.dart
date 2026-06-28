import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/center/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/column/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/text/args_definition.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_type.dart';
part 'widget_args_wrapper.freezed.dart';

@freezed
abstract class WidgetArgsWrapper with _$WidgetArgsWrapper {
  const WidgetArgsWrapper._();
  const factory WidgetArgsWrapper({
    required WidgetType type,
    required Map<WidgetArg, dynamic> args,
  }) = _WidgetArgsWrapper;

  List<dynamic> toTyped(WidgetType type) {
    return switch (type) {
      .text =>
        args.entries
            .map((e) => TextArgsDefinition.fromKV(e.key.name, e.value))
            .toList(),
      .center =>
        args.entries
            .map((e) => CenterArgsDefinition.fromKV(e.key.name, e.value))
            .toList(),
      .column =>
        args.entries
            .map((e) => ColumnArgsDefinition.fromKV(e.key.name, e.value))
            .toList(),
    };
  }
}
