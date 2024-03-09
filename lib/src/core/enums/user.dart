enum Gender {
  female,
  male;

  static Gender fromString(String name) => values.byName(name.toLowerCase());
}
