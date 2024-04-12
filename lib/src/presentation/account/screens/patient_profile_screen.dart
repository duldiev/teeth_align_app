import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class PatientProfileScreen extends StatelessWidget {
  const PatientProfileScreen({
    super.key,
    required this.patient,
  });

  final PatientEntity patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Patient'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 2.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 15.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.avatarBg,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.doctor.path),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Gap(4.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        patient.fullName,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (patient.birthDate != null) ...[
                        Text(
                          patient.birthDate!.getAge()!.toString(),
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                      Gap(2.h),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                        ).copyWith(left: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Срок лечения',
                              style: context.textTheme.labelSmall?.copyWith(
                                color: AppColors.dark,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Gap(3),
                            Text(
                              '1 год 1 месяцов 15 дней',
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.dark,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(2.h),
            Text(
              'Био',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(2),
            Text(
              patient.bio ??
                  'Orthodontist Extraordinaire | Creating Smiles, Changing Lives 🌟 Transforming Smiles with Precision and Care 🌟',
            ),
          ],
        ),
      ),
    );
  }
}
