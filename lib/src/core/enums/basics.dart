enum LoadStatus { initial, loading, success, failed }

enum DateTimeType { days, months, years }

enum InputSuffixType { none, obsecure }

enum Role {
  patient,
  doctor;

  static Role fromString(String name) => values.byName(name.toLowerCase());
}
