import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_tile_image.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({
    super.key,
    required this.doctor,
  });

  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(
        DoctorProfileRoute(doctor: doctor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTileImage(),
          Gap(1.h),
          Text(
            doctor.fullName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            doctor.speciality ?? 'General Practitioner',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
          // Text(
          //   '${doctor.birthDate.getAge()} years old',
          //   style: context.textTheme.titleMedium?.copyWith(
          //     fontWeight: FontWeight.w500,
          //     color: AppColors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
