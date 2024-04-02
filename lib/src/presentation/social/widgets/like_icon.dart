import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/social_bloc/social_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    super.key,
    required this.post,
  });

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<SocialBloc>().add(LikePost(post.id)),
      child: Icon(
        post.isLiked ? FontAwesomeIcons.heart : FontAwesomeIcons.solidHeart,
        size: 28,
        color: post.isLiked ? AppColors.red : AppColors.white80op,
      ),
    );
  }
}
