import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';

class MentorModel extends MentorEntity {
  const MentorModel({
    required super.id,
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.langKey,
    required super.role,
    required super.birthDate,
    required super.avatarUrl,
    required super.position,
    required super.clinicName,
    required super.yearsOfExperience,
  });

  factory MentorModel.fromMap(Map<String, dynamic> map) => MentorModel(
        id: map['id'] as int,
        username: map['login'] as String?,
        firstName: map['firstname'] as String?,
        lastName: map['lastname'] as String?,
        email: map['email'] as String?,
        langKey: map['langKey'] as String?,
        avatarUrl: map['avatarUrl'] as String?,
        role: Role.mentor,
        birthDate: map['birthDate'] == null
            ? DateTime.now()
            : DateTime.parse(map['birthDate']),
        position: map['position'] as String,
        clinicName: map['position'] as String,
        yearsOfExperience: map['yearsOfExperience'] as int,
      );
}
