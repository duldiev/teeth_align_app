// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
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
            GestureDetector(
              onTap: () {
                final authorId = post.author.id;
                return switch (post.author.role) {
                  Role.patient => context.router.push(
                      PatientProfileRoute(patientId: authorId),
                    ),
                  Role.mentor => context.router.push(
                      MentorProfileRoute(mentorId: authorId),
                    ),
                  Role.admin => print('admin doesn\'t exist!'),
                  Role.doctor => context.router.push(
                      DoctorProfileRoute(doctorId: authorId),
                    ),
                };
              },
              child: Row(
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
                      Row(
                        children: [
                          Text(
                            post.type.name.toUpperCase(),
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColors.blue,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            post.publishedDate.howLongAgo(),
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColors.grey.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(1.5.h),
            Linkify(
              text: post.text,
              overflow: TextOverflow.ellipsis,
              maxLines: post.imageUrls.isNotEmpty ? 6 : 10,
              linkStyle: const TextStyle(color: Colors.blue),
              onOpen: (link) => context.router.push(
                DefaultWebView(url: link.url),
              ),
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
