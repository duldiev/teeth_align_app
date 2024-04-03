import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

class PostEntity extends Equatable {
  final int id;
  final AccountEntity author;
  final String text;
  final PostType type;
  final int likes;
  final List<String> imageUrls;
  final bool isLiked;

  const PostEntity({
    required this.id,
    required this.author,
    required this.text,
    required this.type,
    required this.likes,
    required this.imageUrls,
    required this.isLiked,
  });

  @override
  List<Object?> get props => [
        id,
        author,
        text,
        type,
        likes,
        imageUrls,
        isLiked,
      ];

  PostEntity copyWith({
    int? id,
    AccountEntity? author,
    String? text,
    PostType? type,
    int? likes,
    List<String>? imageUrls,
    bool? isLiked,
  }) {
    return PostEntity(
      id: id ?? this.id,
      author: author ?? this.author,
      text: text ?? this.text,
      type: type ?? this.type,
      likes: likes ?? this.likes,
      imageUrls: imageUrls ?? this.imageUrls,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
