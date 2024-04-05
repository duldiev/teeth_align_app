import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class DoctorEntity extends AccountEntity {
  final String clinicName;
  final int yearsOfExperience;
  final String position;

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
    required this.clinicName,
    required this.yearsOfExperience,
    required this.position,
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
        clinicName: 'Clinic',
        avatarUrl: null,
        yearsOfExperience: 0,
        position: 'Position',
      );
}
