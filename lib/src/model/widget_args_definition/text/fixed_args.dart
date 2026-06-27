import 'package:freezed_annotation/freezed_annotation.dart';
part 'fixed_args.freezed.dart';
part 'fixed_args.g.dart';

@freezed
abstract class FixedTextArgs with _$FixedTextArgs {
  const FixedTextArgs._();
  const factory FixedTextArgs({
    required String text,
    @Default(18.0) double fontSize,
  }) = _FixedTextArgs;

  static const initial = FixedTextArgs(text: "");

  factory FixedTextArgs.fromJson(Map<String, dynamic> json) =>
      _$FixedTextArgsFromJson(json);
}
