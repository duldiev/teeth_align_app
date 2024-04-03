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
  final DateTime publishedDate;

  const PostEntity({
    required this.id,
    required this.author,
    required this.text,
    required this.type,
    required this.likes,
    required this.imageUrls,
    required this.isLiked,
    required this.publishedDate,
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
        publishedDate,
      ];

  PostEntity copyWith({
    int? id,
    AccountEntity? author,
    String? text,
    PostType? type,
    int? likes,
    List<String>? imageUrls,
    bool? isLiked,
    DateTime? publishedDate,
  }) {
    return PostEntity(
      id: id ?? this.id,
      author: author ?? this.author,
      text: text ?? this.text,
      type: type ?? this.type,
      likes: likes ?? this.likes,
      imageUrls: imageUrls ?? this.imageUrls,
      isLiked: isLiked ?? this.isLiked,
      publishedDate: publishedDate ?? this.publishedDate,
    );
  }
}
