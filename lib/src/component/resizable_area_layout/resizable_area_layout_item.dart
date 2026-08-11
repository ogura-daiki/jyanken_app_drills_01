import 'package:freezed_annotation/freezed_annotation.dart';
part 'resizable_area_layout_item.freezed.dart';
part 'resizable_area_layout_item.g.dart';

@freezed
sealed class ResizableAreaLayoutItem with _$ResizableAreaLayoutItem {
  const ResizableAreaLayoutItem._();
  const factory ResizableAreaLayoutItem.area({
    required String areaName,
    required int layoutId,
  }) = ResizableAreaLayoutItemArea;
  const factory ResizableAreaLayoutItem.thumb({
    required int layoutId,
    required int thumbIndex,
  }) = ResizableAreaLayoutItemThumb;

  factory ResizableAreaLayoutItem.fromJson(Map<String, dynamic> json) =>
      _$ResizableAreaLayoutItemFromJson(json);
}
