import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class MentorEntity extends AccountEntity {
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
    required this.position,
    required super.avatarUrl,
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
      );

  @override
  List<Object?> get props => [position, ...super.props];
}
