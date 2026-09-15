enum HandResult {
  win,
  draw,
  lose;

  String get displayString => switch (this) {
    .win => "勝ち",
    .draw => "引き分け",
    .lose => "負け",
  };
}
