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

  @override
  List<Object?> get props => [
        currentSet,
        maxSet,
        nextAlignerDate,
        wearDuration,
        reminderTime,
        scanLink,
        referralCode,balance,
        ...super.props,
      ];
}
