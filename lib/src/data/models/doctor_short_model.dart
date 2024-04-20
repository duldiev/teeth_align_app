import 'package:teeth_align_app/src/domain/entity/doctor_short_entity.dart';

class DoctorShortModel extends DoctorShortEntity {
  const DoctorShortModel({
    required super.firstName,
    required super.lastName,
    required super.score,
    required super.place,
  });

  factory DoctorShortModel.fromMap(Map<String, dynamic> map) =>
      DoctorShortModel(
        firstName: map['firstname'] as String,
        lastName: map['lastname'] as String,
        score: map['score'] as int,
        place: map['place'] as int,
      );
}
