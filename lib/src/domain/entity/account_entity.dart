import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';

class AccountEntity extends Equatable {
  final int id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? langKey;
  final String? avatarUrl;
  final Role role;
  final DateTime? birthDate;

  const AccountEntity({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.langKey,
    required this.avatarUrl,
    required this.role,
    required this.birthDate,
  });

  String get fullName => '$firstName $lastName';

  factory AccountEntity.empty() => AccountEntity(
        id: 1,
        username: 'username',
        firstName: 'firstName',
        lastName: 'lastName',
        email: 'email',
        langKey: 'langKey',
        avatarUrl: null,
        role: Role.patient,
        birthDate: DateTime.now(),
      );

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        langKey,
        avatarUrl,
        role,
        birthDate,
      ];
}
