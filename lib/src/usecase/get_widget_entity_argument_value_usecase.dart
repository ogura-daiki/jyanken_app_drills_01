import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

abstract class GetWidgetEntityArgumentValueUsecase {
  Result<T> execute<T>({required WidgetArg arg, required WidgetEntity entity});
}

class GetWidgetEntityArgumentValueUsecaseImpl
    implements GetWidgetEntityArgumentValueUsecase {
  @override
  Result<T> execute<T>({required WidgetArg arg, required WidgetEntity entity}) {
    final wrapper = entity.toWrapper();
    final value = wrapper.args[arg];
    if (value is T) {
      return .success(value);
    } else {
      return .failure(TypeMismatchException(value));
    }
  }
}

class TypeMismatchException<T> implements Exception {
  final dynamic v;
  TypeMismatchException(this.v);
  @override
  String toString() {
    return "値は指定の型(${T.runtimeType})ではありません ${v.runtimeType}";
  }
}
