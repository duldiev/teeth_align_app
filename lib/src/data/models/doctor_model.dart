import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';

class DoctorModel extends DoctorEntity {
  const DoctorModel({
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
    required super.chatToken,
    required super.bio,
    required super.education,
    required super.city,
    required super.workExperience,
    required super.speciality,
    required super.clinicName,
    required super.chatUserId,
    required super.chatEnabled,
    required super.place,
    required super.score,
  });

  factory DoctorModel.fromMap(Map<String, dynamic> map) => DoctorModel(
        id: map['id'] as int,
        username: map['login'] as String?,
        firstName: map['firstName'] as String?,
        lastName: map['lastName'] as String?,
        email: map['email'] as String?,
        langKey: map['langKey'] as String?,
        avatarUrl: map['avatarUrl'] as String?,
        role: Role.doctor,
        birthDate: map['birthDate'] == null
            ? DateTime.now()
            : DateTime.parse(map['birthDate']),
        position: map['position'] as String?,
        bio: map['bio'] as String?,
        education: map['education'] as String?,
        city: map['city'] as String?,
        workExperience: map['workExperience'] as int?,
        speciality: map['speciality'] as String?,
        clinicName: map['clinicName'] as String?,
        chatUserId: map['chatUserId'] as String?,
        chatToken: map['chatToken'] as String?,
        chatEnabled: map['chatEnabled'] as bool? ?? false,
        place: map['place'] as int?,
        score: map['score'] as int?,
      );
}
