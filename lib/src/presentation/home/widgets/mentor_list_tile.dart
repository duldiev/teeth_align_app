import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/core/extensions/string_extension.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_tile_image.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class MentorListTile extends StatelessWidget {
  const MentorListTile({
    super.key,
    required this.mentor,
  });

  final MentorEntity mentor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(
        MentorProfileRoute(mentorId: mentor.id),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTileImage(),
          Gap(1.h),
          Text(
            mentor.fullName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          if (mentor.speciality.isExist()) ...[
            Text(
              mentor.speciality ?? '',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
              ),
            ),
          ],
          if (mentor.birthDate.isExist()) ...[
            // Text(
            //   '${mentor.birthDate.getAge()} years old',
            //   style: context.textTheme.titleMedium?.copyWith(
            //     fontWeight: FontWeight.w500,
            //     color: AppColors.grey,
            //   ),
            // ),
          ],
        ],
      ),
    );
  }
}
