class DateHelper {
  static DateTime get now => DateTime.now();

  static DateTime get currentStartMonth => DateTime.now().copyWith(day: 1);

  static DateTime get nextStartMonth => DateTime.now().copyWith(
        month: DateTime.now().month + 1,
        day: 1,
      );

  static DateTime get nextWeek => DateTime.now().copyWith(
        day: DateTime.now().day + 7,
      );

  static DateTime currentAddDay(int days) => DateTime.now().copyWith(
        month: DateTime.now().month,
        day: DateTime.now().day + days,
      );
}
