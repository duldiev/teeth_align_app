import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';

class MentorEntity extends AccountEntity {
  final String? education;
  final int? workExperience;
  final String? speciality;
  final String? clinicName;
  final List<DoctorEntity> assignedDoctors;
  final int? doctorsAmount;
  final String? city;

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
    required super.bio,
    required super.chatToken,
    required super.chatUserId,
    required super.chatEnabled,
    required this.education,
    required this.workExperience,
    required this.speciality,
    required this.clinicName,
    required this.assignedDoctors,
    required this.city,
    this.doctorsAmount,
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
        assignedDoctors: const [],
        chatEnabled: false,
        city: null,
      );

  Map<String, dynamic> toMap() => {
        'firstName': firstName,
        'lastName': lastName,
        'education': education,
        'workExperience': workExperience,
        'speciality': speciality,
        'clinicName': clinicName,
        'city': city,
      };

  @override
  List<Object?> get props => [
        education,
        workExperience,
        speciality,
        clinicName,
        assignedDoctors,
        doctorsAmount,
        ...super.props,
      ];

  @override
  MentorEntity copyWith({
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? langKey,
    String? avatarUrl,
    Role? role,
    DateTime? birthDate,
    String? chatUserId,
    String? chatToken,
    String? bio,
    String? education,
    int? workExperience,
    String? speciality,
    String? clinicName,
    List<DoctorEntity>? assignedDoctors,
    bool? chatEnabled,
    String? city,
    int? doctorsAmount,
  }) {
    return MentorEntity(
      id: id ?? super.id,
      username: username ?? super.username,
      firstName: firstName ?? super.firstName,
      lastName: lastName ?? super.lastName,
      email: email ?? super.email,
      langKey: langKey ?? super.langKey,
      role: role ?? super.role,
      birthDate: birthDate ?? super.birthDate,
      avatarUrl: avatarUrl ?? super.avatarUrl,
      bio: bio ?? super.bio,
      chatToken: chatToken ?? super.chatToken,
      chatUserId: chatUserId ?? super.chatUserId,
      education: education ?? this.education,
      workExperience: workExperience ?? this.workExperience,
      speciality: speciality ?? this.speciality,
      clinicName: clinicName ?? this.clinicName,
      assignedDoctors: assignedDoctors ?? this.assignedDoctors,
      chatEnabled: chatEnabled ?? this.chatEnabled,
      city: city ?? this.city,
      doctorsAmount: doctorsAmount ?? this.doctorsAmount,
    );
  }
}
