import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class AccountModel extends AccountEntity {
  const AccountModel({
    required super.id,
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.langKey,
    required super.avatar,
  });

  factory AccountModel.fromMap(Map<String, dynamic> map) => AccountModel(
        id: map['id'] as int,
        username: map['login'] as String?,
        firstName: map['firstName'] as String?,
        lastName: map['lastName'] as String?,
        email: map['email'] as String?,
        langKey: map['langKey'] as String?,
        avatar: map['avatar'] as String?,
      );
}
