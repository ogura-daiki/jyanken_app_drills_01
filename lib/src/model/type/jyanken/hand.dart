enum Hand {
  rock,
  scissors,
  paper;

  String get displayString => switch (this) {
    .rock => "グー",
    .scissors => "チョキ",
    .paper => "パー",
  };
  String get displayIconString => switch (this) {
    .rock => "✊",
    .scissors => "✌",
    .paper => "✋",
  };
}
