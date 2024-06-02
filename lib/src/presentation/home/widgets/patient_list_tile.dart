import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_tile_image.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

class PatientListTile extends StatelessWidget {
  const PatientListTile({
    super.key,
    required this.patient,
  });

  final PatientEntity patient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(
        PatientProfileRoute(patientId: patient.id),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ListTileImage(),
          Gap(1.h),
          Text(
            patient.fullName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          // Text(
          //   '${patient.birthDate.getAge()} years old',
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
