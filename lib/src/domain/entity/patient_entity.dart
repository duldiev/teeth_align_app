import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class PatientEntity extends AccountEntity {
  const PatientEntity({
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
  });

  factory PatientEntity.empty() => PatientEntity(
        id: 1,
        username: 'patient',
        firstName: 'Patient',
        lastName: 'Patient',
        email: 'email',
        langKey: 'langKey',
        role: Role.patient,
        birthDate: DateTime.now(),
        avatarUrl: null,
        chatToken: null,
        bio: null,
      );

  @override
  List<Object?> get props => [...super.props];
}
