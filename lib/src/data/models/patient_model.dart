import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

class PatientModel extends PatientEntity {
  const PatientModel({
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
    required super.chatUserId,
    required super.chatEnabled,
  });

  factory PatientModel.fromMap(Map<String, dynamic> map) => PatientModel(
        id: map['id'] as int,
        username: map['username'] as String?,
        firstName: map['firstname'] as String?,
        lastName: map['lastname'] as String?,
        email: map['email'] as String?,
        langKey: map['langKey'] as String?,
        role: Role.patient,
        avatarUrl: map['avatarUrl'] as String?,
        birthDate: map['birthDate'] == null
            ? DateTime.now()
            : DateTime.parse(map['birthDate']),
        bio: map['bio'] as String?,
        chatUserId: map['chatUserId'] as String?,
        chatToken: map['chatToken'] as String?,
        chatEnabled: map['chatEnabled'] as bool? ?? false,
      );
}
