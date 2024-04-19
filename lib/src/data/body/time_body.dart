import 'package:equatable/equatable.dart';

class TimeBody extends Equatable {
  final int hour;
  final int minute;
  final int second;
  final int nano;

  const TimeBody({
    required this.hour,
    required this.minute,
    required this.second,
    required this.nano,
  });

  Map<String, dynamic> toMap() => {
        'hour': hour,
        'minute': minute,
        'second': second,
        'nano': nano,
      };

  @override
  List<Object?> get props => [
        hour,
        minute,
        second,
        nano,
      ];

  TimeBody copyWith({
    int? hour,
    int? minute,
    int? second,
    int? nano,
  }) {
    return TimeBody(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      second: second ?? this.second,
      nano: nano ?? this.nano,
    );
  }
}
