enum LoadStatus { initial, loading, success, failed }

enum DateTimeType { days, months, years }

enum TimerProperty { hh, mm, ss }

enum InputSuffixType { none, obsecure }

enum Role {
  patient,
  mentor,
  admin,
  doctor;

  static Role fromString(String? name) => values.byName(
        name?.toLowerCase() ?? 'patient',
      );
}

enum PostType {
  post,
  forum,
  conference;

  static PostType fromString(String name) => values.byName(name.toLowerCase());
}
