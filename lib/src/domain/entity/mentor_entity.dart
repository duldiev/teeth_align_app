import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class MentorEntity extends AccountEntity {
  final String clinicName;
  final int yearsOfExperience;
  final String position;

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
    required this.clinicName,
    required this.yearsOfExperience,
    required this.position,
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
        position: 'Expert',
        avatarUrl: null,
        clinicName: 'clinicName',
        yearsOfExperience: 0,
      );

  @override
  List<Object?> get props => [
        clinicName,
        yearsOfExperience,
        position,
        ...super.props,
      ];
}
