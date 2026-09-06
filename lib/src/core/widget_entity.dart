import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

extension WidgetEntityExt on WidgetEntity? {
  Result<T> requireType<T extends WidgetEntity>() =>
      this is T ? .success(this as T) : .failure(Exception());
}
