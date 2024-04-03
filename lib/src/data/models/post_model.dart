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
    required super.imageUrls,
    required super.isLiked,
    required super.publishedDate,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) => PostModel(
        id: map['id'] as int,
        author: AccountModel.fromMap(map['author']),
        text: map['text'] as String,
        type: map['type'] != null
            ? PostType.fromString(map['type'] as String)
            : PostType.post,
        likes: map['likes'] as int? ?? 0,
        imageUrls: map['imagesUrls'] != null
            ? (map['imagesUrls'] as List).map((e) => e as String).toList()
            : [],
        isLiked: map['isLiked'] as bool? ?? true,
        publishedDate: DateTime.parse(map['publishedDate']),
      );
}
