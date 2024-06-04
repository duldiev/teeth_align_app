import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/time_body.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class PatientEntity extends AccountEntity {
  final int? currentSet;
  final int? maxSet;
  final DateTime? nextAlignerDate;
  final TimeBody? reminderTime;
  final int? wearDuration;
  final String? scanLink;
  final String? referralCode;
  final int? balance;
  final String? treatmentPeriod;

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
    required super.chatUserId,
    required super.chatEnabled,
    required this.currentSet,
    required this.maxSet,
    required this.nextAlignerDate,
    required this.reminderTime,
    required this.wearDuration,
    this.referralCode,
    this.balance,
    this.scanLink,
    this.treatmentPeriod,
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
        chatUserId: null,
        chatEnabled: false,
        currentSet: null,
        maxSet: null,
        nextAlignerDate: null,
        wearDuration: null,
        reminderTime: null,
      );

  Map<String, dynamic> toMap() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      };

  @override
  List<Object?> get props => [
        currentSet,
        maxSet,
        nextAlignerDate,
        wearDuration,
        reminderTime,
        scanLink,
        referralCode,
        balance,
        treatmentPeriod,
        ...super.props,
      ];

  @override
  PatientEntity copyWith({
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
  }) {
    return PatientEntity(
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
      currentSet: currentSet,
      maxSet: maxSet,
      nextAlignerDate: nextAlignerDate,
      reminderTime: reminderTime,
      wearDuration: wearDuration,
    );
  }
}
