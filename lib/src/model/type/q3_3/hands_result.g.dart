// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hands_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HandsResult _$HandsResultFromJson(Map<String, dynamic> json) => _HandsResult(
  vsRock:
      (json['vsRock'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$HandEnumMap, k),
          $enumDecode(_$HandResultEnumMap, e),
        ),
      ) ??
      const <Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose},
  vsScissors:
      (json['vsScissors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$HandEnumMap, k),
          $enumDecode(_$HandResultEnumMap, e),
        ),
      ) ??
      const <Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose},
  vsPaper:
      (json['vsPaper'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$HandEnumMap, k),
          $enumDecode(_$HandResultEnumMap, e),
        ),
      ) ??
      const <Hand, HandResult>{.rock: .lose, .scissors: .lose, .paper: .lose},
);

Map<String, dynamic> _$HandsResultToJson(_HandsResult instance) =>
    <String, dynamic>{
      'vsRock': instance.vsRock.map(
        (k, e) => MapEntry(_$HandEnumMap[k]!, _$HandResultEnumMap[e]!),
      ),
      'vsScissors': instance.vsScissors.map(
        (k, e) => MapEntry(_$HandEnumMap[k]!, _$HandResultEnumMap[e]!),
      ),
      'vsPaper': instance.vsPaper.map(
        (k, e) => MapEntry(_$HandEnumMap[k]!, _$HandResultEnumMap[e]!),
      ),
    };

const _$HandResultEnumMap = {
  HandResult.win: 'win',
  HandResult.draw: 'draw',
  HandResult.lose: 'lose',
};

const _$HandEnumMap = {
  Hand.rock: 'rock',
  Hand.scissors: 'scissors',
  Hand.paper: 'paper',
};
