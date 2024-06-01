import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class DoctorEntity extends AccountEntity {
  final String? education;
  final String? city;
  final int? workExperience;
  final String? position;
  final String? speciality;
  final String? clinicName;
  final int? place;
  final int? score;
  final int? patientsAmount;

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
    required super.chatUserId,
    required super.chatEnabled,
    required this.education,
    required this.city,
    required this.workExperience,
    required this.position,
    required this.speciality,
    required this.clinicName,
    required this.place,
    this.score,
    this.patientsAmount,
  });

  factory DoctorEntity.empty() => DoctorEntity(
        id: 1,
        username: '',
        firstName: '',
        lastName: '',
        email: '',
        langKey: null,
        role: Role.doctor,
        birthDate: DateTime(1970),
        avatarUrl: null,
        position: null,
        chatToken: null,
        bio: null,
        education: null,
        city: null,
        workExperience: null,
        speciality: null,
        clinicName: null,
        chatUserId: null,
        chatEnabled: false,
        place: null,
      );

  Map<String, dynamic> toMap() => {
        'firstName': firstName,
        'lastName': lastName,
        'education': education,
        'workExperience': workExperience,
        'position': position,
        'speciality': speciality,
        'clinicName': clinicName,
        'city': city,
      };

  @override
  List<Object?> get props => [
        education,
        city,
        workExperience,
        position,
        speciality,
        clinicName,
        place,
        score,
        patientsAmount,
        ...super.props,
      ];

  @override
  DoctorEntity copyWith({
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
    bool? chatEnabled,
    String? education,
    String? city,
    int? workExperience,
    String? position,
    String? speciality,
    String? clinicName,
    int? place,
    int? score,
    int? patientsAmount,
  }) {
    return DoctorEntity(
      id: id ?? this.id,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      langKey: langKey ?? this.langKey,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      role: role ?? this.role,
      birthDate: birthDate ?? this.birthDate,
      chatUserId: chatUserId ?? this.chatUserId,
      chatToken: chatToken ?? this.chatToken,
      bio: bio ?? this.bio,
      chatEnabled: chatEnabled ?? this.chatEnabled,
      education: education ?? this.education,
      city: city ?? this.city,
      workExperience: workExperience ?? this.workExperience,
      position: position ?? this.position,
      speciality: speciality ?? this.speciality,
      clinicName: clinicName ?? this.clinicName,
      place: place ?? this.place,
      score: score ?? this.score,
      patientsAmount: patientsAmount ?? this.patientsAmount,
    );
  }
}
