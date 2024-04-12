import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/mentor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/patient_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/timer_circular_bar.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/timer_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBar(
            title: LogoTitle(),
            centerTitle: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              child: Column(
                children: [
                  switch (state.mentorsStatus) {
                    LoadStatus.initial => const SizedBox(),
                    LoadStatus.loading => const CircularLoader(),
                    LoadStatus.success => Column(
                        children: [
                          ListHeader(title: 'My mentors', onShowAll: () {}),
                          Gap(2.h),
                          Column(
                            children: [
                              for (int i = 0;
                                  i < state.mentors.length;
                                  i += 2) ...[
                                Row(
                                  children: [
                                    Expanded(
                                      child: MentorListTile(
                                        mentor: state.mentors[i],
                                      ),
                                    ),
                                    Gap(4.w),
                                    if (i + 1 < state.mentors.length) ...[
                                      Expanded(
                                        child: MentorListTile(
                                          mentor: state.mentors[i + 1],
                                        ),
                                      ),
                                    ] else ...[
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ],
                                ),
                              ],
                            ],
                          ),
                          if (state.patients.isNotEmpty) ...[
                            Divider(height: 4.h),
                            ListHeader(title: 'My patients', onShowAll: () {}),
                            Gap(2.h),
                            Column(
                              children: [
                                for (int i = 0;
                                    i < state.patients.length;
                                    i += 2) ...[
                                  Row(
                                    children: [
                                      Expanded(
                                        child: PatientListTile(
                                          patient: state.patients[i],
                                        ),
                                      ),
                                      Gap(4.w),
                                      if (i + 1 < state.patients.length) ...[
                                        Expanded(
                                          child: PatientListTile(
                                            patient: state.patients[i + 1],
                                          ),
                                        ),
                                      ] else ...[
                                        const Expanded(child: SizedBox()),
                                      ],
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ],
                        ],
                      ),
                    LoadStatus.failed => const SizedBox(),
                  },
                  const TimerCircularBar(),
                  InkWell(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => const TimerInput(),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Text(
                        'Таймер\nвывода',
                        style: context.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
