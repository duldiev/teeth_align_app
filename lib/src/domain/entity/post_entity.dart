import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';

import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class PostEntity extends Equatable {
  final int id;
  final AccountEntity author;
  final String text;
  final PostType type;
  final int likes;

  const PostEntity({
    required this.id,
    required this.author,
    required this.text,
    required this.type,
    required this.likes,
  });

  @override
  List<Object?> get props => [
        id,
        author,
        text,
        type,
        likes,
      ];
}
