import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/admin_entity.dart';

class AdminModel extends AdminEntity {
  const AdminModel({
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

  factory AdminModel.fromMap(Map<String, dynamic> map) => AdminModel(
        id: map['id'] as int,
        username: map['login'] as String?,
        firstName:
            map['firstname'] as String? ?? map['firstName'] as String? ?? '',
        lastName:
            map['lastname'] as String? ?? map['lastName'] as String? ?? '',
        email: map['email'] as String?,
        langKey: map['langKey'] as String?,
        avatarUrl: map['avatarUrl'] as String?,
        // role: Role.patient,
        role: Role.fromString(map['role']),
        birthDate: map['birthDate'] != null
            ? DateTime.parse(
                map['birthDate'],
              )
            : null,
        chatUserId: map['chatUserId'] as String?,
        chatToken: map['chatToken'] as String?,
        bio: map['bio'] as String?,
        chatEnabled: map['chatEnabled'] as bool? ?? false,
      );
}
