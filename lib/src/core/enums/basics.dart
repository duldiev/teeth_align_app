enum LoadStatus { initial, loading, success, failed }

enum DateTimeType { days, months, years }

enum InputSuffixType { none, obsecure }

enum Role {
  patient,
  mentor,
  admin,
  doctor;

  static Role fromString(String name) => values.byName(name.toLowerCase());
}

enum PostType {
  post,
  forum,
  conference;

  static PostType fromString(String name) => values.byName(name.toLowerCase());
}
