import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class AdminEntity extends AccountEntity {
  const AdminEntity({
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

  Map<String, dynamic> toMap() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      };

  @override
  AdminEntity copyWith({
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
    return AdminEntity(
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
    );
  }
}
