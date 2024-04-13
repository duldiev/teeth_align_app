import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class MentorEntity extends AccountEntity {
  final String? education;
  final String? workExperience;
  final String? speciality;
  final String? clinicName;

  const MentorEntity({
    required super.id,
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.langKey,
    required super.role,
    required super.birthDate,
    required super.avatarUrl,
    required super.chatToken,
    required super.bio,
    required this.education,
    required this.workExperience,
    required this.speciality,
    required this.clinicName,
    required super.chatUserId,
  });

  factory MentorEntity.empty() => MentorEntity(
        id: 1,
        username: 'mentor',
        firstName: 'Mentor',
        lastName: 'Mentor',
        email: 'email',
        langKey: 'langKey',
        role: Role.mentor,
        birthDate: DateTime.now(),
        avatarUrl: null,
        education: null,
        workExperience: null,
        speciality: null,
        chatToken: null,
        bio: null,
        clinicName: null,
        chatUserId: null,
      );

  @override
  List<Object?> get props => [
        education,
        workExperience,
        speciality,
        clinicName,
        ...super.props,
      ];
}
