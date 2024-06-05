import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class AccessEntity extends Equatable {
  final int id;
  final String accessCode;
  final String createdBy;
  final DateTime? createdDate;
  final DateTime? activationDate;
  final AccountEntity? account;

  const AccessEntity({
    required this.id,
    required this.accessCode,
    required this.createdBy,
    this.createdDate,
    this.activationDate,
    this.account,
  });

  @override
  List<Object?> get props => [
        id,
        accessCode,
        createdBy,
        createdDate,
        activationDate,
        account,
      ];
}
