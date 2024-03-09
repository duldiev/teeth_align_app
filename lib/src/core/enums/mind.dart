enum GameType {
  subtraction,
  division,
  blocks,
  association,
  spelling;

  static GameType fromString(String name) => values.byName(
        name.toLowerCase(),
      );
}

enum GameStatus {
  failed,
  success;

  static GameStatus fromString(String name) => values.byName(
        name.toLowerCase(),
      );
}
