import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class MentorEntity extends AccountEntity {
  final String? education;
  final String? workExperience;
  final String? speciality;
  final String? chatToken;

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
    required this.education,
    required this.workExperience,
    required this.speciality,
    required this.chatToken,
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
      );

  @override
  List<Object?> get props => [
        education,
        workExperience,
        speciality,
        chatToken,
        ...super.props,
      ];
}
