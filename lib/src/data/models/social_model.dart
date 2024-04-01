import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/models/account_model.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';

class PostModel extends PostEntity {
  const PostModel({
    required super.id,
    required super.author,
    required super.text,
    required super.type,
    required super.likes,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) => PostModel(
        id: map['id'] as int,
        author: AccountModel.fromMap(map['author']),
        text: map['text'] as String,
        type: PostType.fromString(map['type']),
        likes: map['likes'] as int,
      );
}
