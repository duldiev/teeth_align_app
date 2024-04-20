import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/core/constants/chat.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/star_icon.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({
    super.key,
    required this.doctor,
  });

  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: const Text('Doctor'),
        actions: [
          InkWell(
            onTap: () => context.router.push(
              RateDoctorRoute(doctor: doctor),
            ),
            child: const Icon(
              FontAwesomeIcons.star,
              size: 20,
            ),
          ),
          Gap(4.w),
        ],
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 15.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.avatarBg,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.doctor.path),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Gap(4.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.fullName,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      doctor.speciality ?? 'General Practitioner',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '${doctor.birthDate?.getAge()} years old',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Пациенты',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.dark,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(3),
                        Text(
                          '1000+',
                          style: context.textTheme.titleMedium?.copyWith(
                            color: AppColors.dark,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(3.w),
                Expanded(
                  child: Container(
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
                          'Рейтинг',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.dark,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '4.5',
                              style: context.textTheme.titleMedium?.copyWith(
                                color: AppColors.dark,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const StarIcon(enabled: 0.75 > 0.33),
                                Gap(2.w),
                                const StarIcon(enabled: 0.75 > 0.66),
                                Gap(2.w),
                                const StarIcon(enabled: 0.75 == 1.00),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(3.w),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      final channelState = await client.queryChannel(
                        ChatConstants.messageType,
                        channelData: {
                          'name': '${appData.fullName} с ${doctor.fullName}',
                          'members': [
                            doctor.chatUserId.toString(),
                            appData.chaUserId.toString(),
                          ],
                        },
                      );
                      if (!context.mounted) return;
                      final channel = client.channel(
                        ChatConstants.messageType,
                        id: channelState.channel?.id,
                      );
                      context.router.push(ChatRoute(channel: channel));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Чат',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(2.w),
                          const Icon(
                            FontAwesomeIcons.solidMessage,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
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
              doctor.bio ??
                  'Orthodontist Extraordinaire | Creating Smiles, Changing Lives 🌟 Transforming Smiles with Precision and Care 🌟',
            ),
            Gap(2.h),
            Text(
              'Клиника',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(2),
            Text(doctor.clinicName ?? 'Care Medical Center'),
          ],
        ),
      ),
    );
  }
}
