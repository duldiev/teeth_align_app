import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String langKey;

  const AccountEntity({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.langKey,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        langKey,
      ];
}
