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
  final String? chatUserId;
  final String? chatToken;
  final String? bio;

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
    required this.chatUserId,
    required this.chatToken,
    required this.bio,
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
        chatToken: null,
        bio: null,
        chatUserId: null,
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
        chatUserId,
        chatToken,
        bio,
      ];

  AccountEntity copyWith({
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
  }) {
    return AccountEntity(
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
    );
  }
}
