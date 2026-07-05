import 'package:jyanken_app_drills/src/model/widget_args_definition/typed_arg.dart';

interface class ArgInputValueWidgetInterface<T> {
  final TypedArg<T> type;
  final T? value;
  final void Function(T? newVal) onChange;

  ArgInputValueWidgetInterface({
    required this.type,
    required this.value,
    required this.onChange,
  });
}
