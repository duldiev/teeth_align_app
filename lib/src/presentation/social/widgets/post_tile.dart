import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/presentation/social/views/post_images_url_view.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/author_avatar.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/like_icon.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    super.key,
    required this.post,
  });

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(SinglePostRoute(postId: post.id)),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: AppColors.post,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AuthorAvatar(account: post.author),
                Gap(3.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.author.fullName,
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      post.type.name.toUpperCase(),
                      style: context.textTheme.titleSmall?.copyWith(
                        color: AppColors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Gap(1.5.h),
            Text(
              post.text,
              overflow: TextOverflow.ellipsis,
              maxLines: post.imageUrls.isNotEmpty ? 6 : 10,
            ),
            Gap(2.h),
            PostImagesUrlView(imageUrls: post.imageUrls),
            Row(
              children: [
                LikeIcon(post: post),
                Gap(5.w),
                InkWell(
                  child: Icon(
                    FontAwesomeIcons.comment,
                    size: 28,
                    color: AppColors.white80op,
                  ),
                ),
                Gap(5.w),
                InkWell(
                  child: Icon(
                    FontAwesomeIcons.shareFromSquare,
                    size: 26,
                    color: AppColors.white80op,
                  ),
                ),
              ],
            ),
            Gap(1.h),
            Text('Нравится ${post.likes} людям'),
          ],
        ),
      ),
    );
  }
}
