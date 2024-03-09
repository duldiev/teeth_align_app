enum GoalStatus {
  completed,
  active,
  locked;

  static GoalStatus fromString(String name) => values.byName(
        name.toLowerCase(),
      );
}

enum GoalType {
  mind,
  soul,
  body;

  static GoalType fromString(String name) => values.byName(
        name.toLowerCase(),
      );
}
