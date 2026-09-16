import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/type/jyanken/hand.dart';
import 'package:jyanken_app_drills/src/model/type/jyanken/hand_result.dart';
part 'hands_result.freezed.dart';
part 'hands_result.g.dart';

@freezed
abstract class HandsResult with _$HandsResult {
  const HandsResult._();
  const factory HandsResult({
    @Default(<Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose})
    Map<Hand, HandResult> vsRock,
    @Default(<Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose})
    Map<Hand, HandResult> vsScissors,
    @Default(<Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose})
    Map<Hand, HandResult> vsPaper,
  }) = _HandsResult;

  factory HandsResult.fromJson(Map<String, dynamic> json) =>
      _$HandsResultFromJson(json);
}
