import 'package:teeth_align_app/src/data/models/account_model.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';

class CommentModel extends CommentEntity {
  const CommentModel({
    required super.author,
    required super.text,
  });

  factory CommentModel.fromMap(Map<String, dynamic> map) => CommentModel(
        author: AccountModel.fromMap(map['author']),
        text: map['text'] as String,
      );
}
