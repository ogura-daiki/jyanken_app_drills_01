import 'package:freezed_annotation/freezed_annotation.dart';
part 'resizable_area_type.freezed.dart';
part 'resizable_area_type.g.dart';

@freezed
sealed class ResizableAreaType with _$ResizableAreaType {
  const ResizableAreaType._();
  const factory ResizableAreaType.fixed(double initial) =
      ResizableAreaTypeFixed;
  const factory ResizableAreaType.ratio(double ratio) = ResizableAreaTypeRatio;
  const factory ResizableAreaType.expand(double weight) =
      ResizableAreaTypeWeight;

  ResizableAreaType copy() {
    return switch (this) {
      ResizableAreaTypeFixed(:final initial) => .fixed(initial),
      ResizableAreaTypeRatio(:final ratio) => .ratio(ratio),
      ResizableAreaTypeWeight(:final weight) => .expand(weight),
    };
  }

  factory ResizableAreaType.fromJson(Map<String, dynamic> json) =>
      _$ResizableAreaTypeFromJson(json);
}
