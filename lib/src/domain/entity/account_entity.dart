import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  final int id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? langKey;
  final String? avatar;

  const AccountEntity({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.langKey,
    required this.avatar,
  });

  String get fullName => '$firstName $lastName';

  factory AccountEntity.empty() => const AccountEntity(
        id: 1,
        username: 'username',
        firstName: 'firstName',
        lastName: 'lastName',
        email: 'email',
        langKey: 'langKey',
        avatar: null,
      );

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        langKey,
        avatar,
      ];
}
