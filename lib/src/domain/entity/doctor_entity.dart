import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class DoctorEntity extends AccountEntity {
  final String? education;
  final String? workExperience;
  final String? position;
  final String? speciality;
  final String? clinicName;

  const DoctorEntity({
    required super.id,
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.langKey,
    required super.avatarUrl,
    required super.role,
    required super.birthDate,
    required super.chatToken,
    required super.bio,
    required this.education,
    required this.workExperience,
    required this.position,
    required this.speciality,
    required this.clinicName,
    required super.chatUserId,
    required super.chatEnabled,
  });

  factory DoctorEntity.empty() => DoctorEntity(
        id: 1,
        username: 'doctor',
        firstName: 'Doctor',
        lastName: 'Doctor',
        email: 'email',
        langKey: 'langKey',
        role: Role.doctor,
        birthDate: DateTime(1970),
        avatarUrl: null,
        position: null,
        chatToken: null,
        bio: null,
        education: null,
        workExperience: null,
        speciality: null,
        clinicName: null,
        chatUserId: null,
        chatEnabled: false,
      );
}
