import 'package:equatable/equatable.dart';

class DoctorShortEntity extends Equatable {
  final String firstName;
  final String lastName;
  final int score;
  final int place;

  const DoctorShortEntity({
    required this.firstName,
    required this.lastName,
    required this.score,
    required this.place,
  });

  String get fullName => '$firstName $lastName';

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        score,
        place,
      ];
}
