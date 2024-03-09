import 'package:intl/intl.dart';

class DateConverter {
  static String? convertDate(
    DateTime? date,
    String format,
  ) =>
      date != null ? DateFormat(format).format(date) : null;
}

class DateTools {
  static int getAge(DateTime birthday) => DateTime(
        DateTime.now().year - birthday.year,
      ).year;

  static DateTime get getCurrent => DateTime.now();
}
