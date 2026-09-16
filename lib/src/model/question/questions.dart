import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/core/result.dart';
import 'package:jyanken_app_drills/src/model/project_id/project_id.dart';
import 'package:jyanken_app_drills/src/model/question/question.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/q3_3/hands_result.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';

final class Questions {
  const Questions._();

  static final List<Question> values = .unmodifiable(<Question>[
    .new(
      index: 0,
      projectId: .new("q1-0"),
      name: "文字の表示",
      initialRoot: .new(id: .create(), args: .initial),
      validators: [
        .new(
          valSelector: (root) => root.args.child,
          matcher: .requiredType<WidgetEntityText>(),
          hint: "ルート要素の直下にTextを配置してください",
        ),
        .new(
          valSelector: (root) =>
              root.args.child.requireType<WidgetEntityText>().args.text,
          matcher: .requiredValue("こんにちは"),
          hint: "Textに こんにちは と表示してください",
        ),
      ],
    ),
    .new(
      index: 1,
      projectId: .new("q1-1"),
      name: "縦に並べる",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .column(
            id: .create(),
            args: .new(
              crossAxisAlignment: .stretch,
              children: [
                .container(
                  id: .create(),
                  args: .new(
                    color: .fromColor(
                      HSVColor.fromColor(Colors.red).withValue(0.6).toColor(),
                    ),
                    child: .text(
                      id: .create(),
                      args: .new(
                        text: "下側に色付きContainerを追加",
                        style: .new(color: .fromColor(Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1],
          matcher: .requiredType<WidgetEntityContainer>(),
          hint: "ColumnにContainerを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .height,
          matcher: .requiredType<double>(),
          hint: "追加したContainerに高さを設定してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .color,
          matcher: .requiredType<ColorWrapper>(),
          hint: "追加したContainerに色を設定してください",
        ),
      ],
    ),
    .new(
      index: 2,
      projectId: .new("q1-2"),
      name: "横に並べる",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .row(
            id: .create(),
            args: .new(
              crossAxisAlignment: .stretch,
              children: [
                .container(
                  id: .create(),
                  args: .new(
                    color: .fromColor(
                      HSVColor.fromColor(Colors.red).withValue(0.6).toColor(),
                    ),
                    child: .text(
                      id: .create(),
                      args: .new(
                        text: "右側に色付きContainerを追加",
                        style: .new(color: .fromColor(Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) =>
              root.args.child?.requireType<WidgetEntityRow>().args.children[1],
          matcher: .requiredType<WidgetEntityContainer>(),
          hint: "RowにContainerを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityRow>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .width,
          matcher: .requiredType<double>(),
          hint: "追加したContainerに横幅を設定してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityRow>()
              .args
              .children[1]
              .requireType<WidgetEntityContainer>()
              .args
              .color,
          matcher: .requiredType<ColorWrapper>(),
          hint: "追加したContainerに色を設定してください",
        ),
      ],
    ),
    .new(
      index: 3,
      projectId: .new("q1-3"),
      name: "残りを埋める",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .column(
            id: .create(),
            args: .new(
              crossAxisAlignment: .stretch,
              children: [
                .container(
                  id: .create(),
                  args: .new(
                    height: 60,
                    color: .fromColor(
                      HSVColor.fromColor(
                        Colors.lightGreenAccent,
                      ).withSaturation(0.6).withValue(0.6).toColor(),
                    ),
                    child: .text(
                      id: .create(),
                      args: .new(
                        text: "下側にExpendedと色付きContainerを追加",
                        style: .new(color: .fromColor(Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children
              .whereType<WidgetEntityExpanded>()
              .first,
          matcher: .requiredType<WidgetEntityExpanded>(),
          hint: "ColumnにExpandedを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children
              .whereType<WidgetEntityExpanded>()
              .first
              .args
              .child,
          matcher: .requiredType<WidgetEntityContainer>(),
          hint: "ExpandedにContainerを追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityColumn>()
              .args
              .children
              .whereType<WidgetEntityExpanded>()
              .first
              .args
              .child
              .requireType<WidgetEntityContainer>()
              .args
              .color,
          matcher: .requiredType<ColorWrapper>(),
          hint: "追加したContainerに色を設定してください",
        ),
      ],
    ),
    .new(
      index: 10,
      projectId: .new("q2-1"),
      name: "ボタンを押してアクション",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .scope(
            id: .create(),
            args: .new(
              variables: .new(
                variables: [
                  .new(
                    name: "displayText",
                    initialValue: .string(rawValue: "初期テキスト"),
                    value: .string(rawValue: "初期テキスト"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) =>
              root.args.child?.requireType<WidgetEntityScope>().args.child,
          matcher: .requiredType<WidgetEntityQ2_1>(),
          hint: "q2_1をScopeに追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityScope>()
              .args
              .child
              ?.requireType<WidgetEntityQ2_1>()
              .args
              .displayText,
          matcher: .requiredValue("テスト"),
          hint: "q2_1のdisplayTextに テスト と設定してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityScope>()
              .args
              .variables
              .variables
              .where(
                (e) => e.name == "displayText" && e.value.toEnum() == .string,
              )
              .first
              .value
              .rawValue,
          matcher: .requiredValue("テスト"),
          hint: "プレビュー欄からq2_1のボタンを押して、ボタンの上側に表示されている文字列を テスト にしてください",
        ),
      ],
    ),
    .new(
      index: 11,
      projectId: .new("q2-2"),
      name: "ランダムな手を出す",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .scope(
            id: .create(),
            args: .new(
              variables: .new(
                variables: [
                  .new(
                    name: "random",
                    initialValue: .int(rawValue: 0),
                    value: .int(rawValue: 0),
                  ),
                  .new(
                    name: "displayText",
                    initialValue: .string(rawValue: ""),
                    value: .string(rawValue: ""),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) =>
              root.args.child?.requireType<WidgetEntityScope>().args.child,
          matcher: .requiredType<WidgetEntityQ2_2>(),
          hint: "q2_2をScopeに追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityScope>()
              .args
              .child
              ?.requireType<WidgetEntityQ2_2>()
              .args
              .hands,
          matcher: .new(
            matcher: (value) {
              if (value is! List<String>) {
                return .failure(.new("値が List<String> ではありません"));
              }
              if (value.length != 3) {
                return .failure(
                  .new(
                    "リストの長さが3ではありません。文字列を${switch (value.length < 3) {
                      true => "${3 - value.length}つ追加",
                      false => "${value.length - 3}つ削除",
                    }}してください。",
                  ),
                );
              }
              const requiredValues = ["✊", "✌", "✋"];
              if (requiredValues.every((e) => value.contains(e))) {
                return .success(null);
              }
              return .failure(
                .new("値は ${requiredValues.join(", ")} のみにしてください"),
              );
            },
          ),
          hint: "q2_2の hands の配列の中身を ✊, ✌, ✋ にしてください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityScope>()
              .args
              .variables
              .variables
              .where(
                (e) => e.name == "displayText" && e.value.toEnum() == .string,
              )
              .first
              .value
              .rawValue,
          matcher: .new(
            matcher: (value) {
              if (value is! String) {
                return .failure(.new("値の型が String ではありません"));
              }
              const requiredValues = ["✊", "✌", "✋"];
              if (requiredValues.any((e) => value == e)) {
                return .success(null);
              }
              return .failure(
                .new("値が ${requiredValues.join(", ")} のどれでもありません。"),
              );
            },
          ),
          hint:
              "プレビュー欄からq2_2のボタンを押して、ボタンの上側に表示されている文字列を ✊、✌、✋ のどれかにしてください",
        ),
      ],
    ),
    .new(
      index: 12,
      projectId: .new("q2-3"),
      name: "勝敗を判定する",
      initialRoot: .new(
        id: .create(),
        args: .new(
          child: .scope(
            id: .create(),
            args: .new(
              variables: .new(
                variables: [
                  .new(
                    name: "enemyHandId",
                    initialValue: .int(rawValue: 0),
                    value: .int(rawValue: 0),
                  ),
                  .new(
                    name: "myHandId",
                    initialValue: .int(rawValue: 0),
                    value: .int(rawValue: 0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      validators: [
        .new(
          valSelector: (root) =>
              root.args.child?.requireType<WidgetEntityScope>().args.child,
          matcher: .requiredType<WidgetEntityQ2_3>(),
          hint: "q2_3をScopeに追加してください",
        ),
        .new(
          valSelector: (root) => root.args.child
              ?.requireType<WidgetEntityScope>()
              .args
              .child
              .requireType<WidgetEntityQ2_3>()
              .args
              .handsResult,
          matcher: .requiredValue(
            HandsResult(
              vsRock: {.rock: .draw, .scissors: .lose, .paper: .win},
              vsScissors: {.rock: .win, .scissors: .draw, .paper: .lose},
              vsPaper: {.rock: .lose, .scissors: .win, .paper: .draw},
            ),
          ),
          hint: "q2_3を編集し、正しいルールのじゃんけんが行われるようにしてください",
        ),
      ],
    ),
  ]);

  static Result<Question, Exception> findById(ProjectIdTypeQuestion projectId) {
    final index = values.indexWhere((e) => e.projectId == projectId);
    if (index < 0) return .failure(Exception());
    return .success(values[index]);
  }
}
