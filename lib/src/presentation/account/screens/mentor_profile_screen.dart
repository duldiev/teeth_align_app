import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/core/constants/chat.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/core/services/modal_bottom_sheet.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/star_icon.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/mentor_bloc/mentor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class MentorProfileScreen extends StatefulWidget {
  const MentorProfileScreen({
    super.key,
    required this.mentorId,
  });

  final int mentorId;

  @override
  State<MentorProfileScreen> createState() => _MentorProfileScreenState();
}

class _MentorProfileScreenState extends State<MentorProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MentorBloc>().add(GetMentor(widget.mentorId));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorBloc, MentorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBar(
            title: Text('Mentor'),
          ),
          body: state.when(
            initial: () => const SizedBox(),
            loading: () => const SizedBox(),
            loaded: (data) {
              if (data.mentor == null) {
                return const SizedBox();
              }
              return SingleChildScrollView(
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
                              fit: BoxFit.fitWidth,
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
                              data.mentor!.fullName,
                              style: context.textTheme.titleLarge?.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              data.mentor!.speciality ?? 'General Practitioner',
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '${data.mentor!.birthDate?.getAge()} years old',
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
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
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
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(
                                        color: AppColors.dark,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                  'name':
                                      '${appData.fullName} с ${data.mentor?.fullName}',
                                  'members': [
                                    data.mentor?.chatUserId.toString(),
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
                                    style:
                                        context.textTheme.titleMedium?.copyWith(
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
                      data.mentor!.bio ??
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
                    Text(
                      data.mentor!.clinicName ?? 'Care Medical Center',
                    ),
                    Gap(2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Assigned doctors',
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () => MBS.show(
                            context,
                            const _ListOfDoctors(),
                          ),
                          child: Text(
                            'Assign',
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(2),
                  ],
                ),
              );
            },
            failed: () => const SizedBox(),
          ),
        );
      },
    );
  }
}

class _ListOfDoctors extends StatelessWidget {
  const _ListOfDoctors();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorBloc, MentorState>(
      builder: (context, mState) {
        return mState.when(
          initial: () => const SizedBox(),
          loading: () => const SizedBox(),
          loaded: (mData) => BlocBuilder<AdminBloc, AdminState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: state.when(
                  initial: () => const SizedBox(),
                  loading: () => const SizedBox(),
                  loaded: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.w,
                          right: 2.w,
                          bottom: 2.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ListHeader(title: 'Доктора'),
                            GestureDetector(
                              onTap: () {
                                context.read<AdminBloc>().add(
                                      AssignDoctorsToMentors(
                                        mData.mentor!.id,
                                        mData.mentor!.assignedDoctors,
                                      ),
                                    );
                                context.router.maybePop();
                              },
                              child: Text(
                                'Применить',
                                style: context.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(
                        data.doctors.length,
                        (index) => _SingleDoctorTile(
                          doctor: data.doctors[index],
                          isSelected: mData.mentor?.assignedDoctors
                                  .contains(data.doctors[index]) ??
                              false,
                        ),
                      ),
                    ],
                  ),
                  failed: () => const SizedBox(),
                ),
              );
            },
          ),
          failed: () => const SizedBox(),
        );
      },
    );
  }
}

class _SingleDoctorTile extends StatelessWidget {
  const _SingleDoctorTile({
    required this.doctor,
    required this.isSelected,
  });

  final DoctorEntity doctor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<MentorBloc>().add(
            isSelected ? UnassignDoctor(doctor) : AssignDoctor(doctor),
          ),
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(Assets.images.doctor.path),
                    ),
                  ),
                ),
                Gap(3.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.fullName,
                      style: context.textTheme.titleMedium,
                    ),
                    if (doctor.speciality != null) ...[
                      Text(
                        doctor.speciality!,
                        style: context.textTheme.titleSmall,
                      ),
                    ],
                  ],
                ),
              ],
            ),
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? AppColors.primary : AppColors.white,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}
