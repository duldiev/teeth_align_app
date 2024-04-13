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
  });
}
