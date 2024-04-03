import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class CommentEntity extends Equatable {
  final AccountEntity author;
  final String text;
  final DateTime createdDate;

  const CommentEntity({
    required this.author,
    required this.text,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [
        author,
        text,
        createdDate,
      ];
}
