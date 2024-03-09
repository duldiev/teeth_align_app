import 'package:flutter/material.dart';

extension NumExtensions on num {
  String get formattedDuration {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final duration = Duration(seconds: toInt());
    String minute = twoDigits(duration.inMinutes);
    String second = twoDigits(duration.inSeconds - (duration.inMinutes * 60));
    return '$minute:$second';
  }

  int getTimerFromDuration(num duration) {
    int currentTime = toInt();
    return (duration.toInt() - currentTime);
  }

  String getNameOfMonth(BuildContext context) => switch (this) {
        1 => 'January',
        2 => 'Feburary',
        3 => 'March',
        4 => 'April',
        5 => 'May',
        6 => 'June',
        7 => 'July',
        8 => 'August',
        9 => 'September',
        10 => 'October',
        11 => 'November',
        12 => 'December',
        int() => '',
        double() => '',
      };
}
