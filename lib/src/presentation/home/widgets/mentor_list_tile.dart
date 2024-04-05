import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_tile_image.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class MentorListTile extends StatelessWidget {
  const MentorListTile({
    super.key,
    required this.mentor,
  });

  final MentorEntity mentor;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(
          mentor.position,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
          ),
        ),
        Text(
          '${mentor.birthDate.getAge()} years old',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
