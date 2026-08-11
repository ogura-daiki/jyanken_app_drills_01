import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/component/resizable_area_layout/resizable_area_type.dart';
part 'resizable_area.freezed.dart';

@freezed
abstract class ResizableArea with _$ResizableArea {
  const ResizableArea._();
  const factory ResizableArea({
    required String areaName,
    required ResizableAreaType type,
    required Widget widget,
  }) = _ResizableArea;
}
