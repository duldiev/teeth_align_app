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
    required super.education,
    required super.workExperience,
    required super.speciality,
    required super.chatToken,
    required super.bio,
    required super.clinicName,
    required super.chatUserId,
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
        education: map['education'] as String?,
        workExperience: map['workExperience'] as String?,
        speciality: map['speciality'] as String?,
        chatToken: map['chatToken'] as String?,
        bio: map['bio'] as String?,
        clinicName: map['clinicName'] as String?,
        chatUserId: map['chatUserId'] as String?,
      );
}
