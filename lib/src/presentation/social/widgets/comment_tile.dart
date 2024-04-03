import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/author_avatar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    super.key,
    required this.comment,
  });

  final CommentEntity comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthorAvatar(account: comment.author, dimensions: 35),
        Gap(3.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  comment.author.fullName,
                  style: context.textTheme.titleMedium?.copyWith(height: 1),
                ),
                Gap(2.w),
                Text(
                  comment.createdDate.howLongAgo(),
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColors.grey.withOpacity(0.8),
                    height: 1,
                  ),
                ),
              ],
            ),
            const Gap(6),
            Text(
              comment.text,
              style: context.textTheme.bodyMedium,
              maxLines: 200,
            ),
          ],
        ),
      ],
    );
  }
}
