import 'package:teeth_align_app/src/data/models/account_model.dart';
import 'package:teeth_align_app/src/domain/entity/access_entity.dart';

class AccessModel extends AccessEntity {
  const AccessModel({
    required super.id,
    required super.accessCode,
    required super.createdBy,
    required super.createdDate,
    required super.activationDate,
    required super.account,
  });

  factory AccessModel.fromMap(Map<String, dynamic> map) => AccessModel(
        id: map['id'] as int,
        accessCode: map['accessCode'] as String,
        createdBy: map['createdBy'] as String,
        createdDate: map['createdDate'] != null
            ? DateTime.tryParse(map['createdDate'])
            : null,
        activationDate: map['activationDate'] != null
            ? DateTime.tryParse(map['activationDate'])
            : null,
        account: map['account'] != null
            ? AccountModel.fromMap(map['account'])
            : null,
      );
}
