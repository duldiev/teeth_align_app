import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class CommentEntity extends Equatable {
  final AccountEntity author;
  final String text;

  const CommentEntity({
    required this.author,
    required this.text,
  });

  @override
  List<Object?> get props => [
        author,
        text,
      ];
}
