import 'package:equatable/equatable.dart';

class TimeBody extends Equatable {
  final int hour;
  final int minute;

  const TimeBody({
    required this.hour,
    required this.minute,
  });

  Map<String, dynamic> toMap() => {
        'hour': hour,
        'minute': minute,
      };

  factory TimeBody.empty() => const TimeBody(hour: 0, minute: 0);

  factory TimeBody.fromString(String? string) {
    if (string == null) return TimeBody.empty();
    return TimeBody(
      hour: int.tryParse(string.substring(0, 2)) ?? 0,
      minute: int.tryParse(string.substring(3, 5)) ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        hour,
        minute,
      ];

  TimeBody copyWith({
    int? hour,
    int? minute,
  }) {
    return TimeBody(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }
}
