import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'alignment_wrapper.freezed.dart';
part 'alignment_wrapper.g.dart';

@freezed
abstract class AlignmentWrapper with _$AlignmentWrapper {
  const AlignmentWrapper._();
  const factory AlignmentWrapper({required double x, required double y}) =
      _AlignmentWrapper;

  AlignmentGeometry get value => Alignment(x, y);
  static AlignmentWrapper fromAlignment(Alignment align) =>
      .new(x: align.x, y: align.y);

  static const AlignmentWrapper topLeft = .new(x: -1.0, y: -1.0);
  static const AlignmentWrapper topCenter = .new(x: 0.0, y: -1.0);
  static const AlignmentWrapper topRight = .new(x: 1.0, y: -1.0);
  static const AlignmentWrapper centerLeft = .new(x: -1.0, y: 0.0);
  static const AlignmentWrapper center = .new(x: 0.0, y: 0.0);
  static const AlignmentWrapper centerRight = .new(x: 1.0, y: 0.0);
  static const AlignmentWrapper bottomLeft = .new(x: -1.0, y: 1.0);
  static const AlignmentWrapper bottomCenter = .new(x: 0.0, y: 1.0);
  static const AlignmentWrapper bottomRight = .new(x: 1.0, y: 1.0);

  factory AlignmentWrapper.fromJson(Map<String, dynamic> json) =>
      _$AlignmentWrapperFromJson(json);
}
