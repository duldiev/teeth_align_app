import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    super.key,
    required this.post,
    required this.onLike,
  });

  final PostEntity post;
  final void Function(int postId) onLike;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onLike(post.id),
      child: Icon(
        post.isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
        size: 28,
        color: post.isLiked ? AppColors.red : AppColors.white80op,
      ),
    );
  }
}
