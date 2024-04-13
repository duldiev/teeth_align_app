import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/doctor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/mentor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/patient_list_tile.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            title: const LogoTitle(),
            centerTitle: true,
            actions: client.state.currentUser != null
                ? [
                    InkWell(
                      onTap: () => context.router.push(const ChatListRoute()),
                      child: const Icon(
                        FontAwesomeIcons.inbox,
                        size: 24,
                      ),
                    ),
                    Gap(4.w),
                  ]
                : [],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              child: state.when(
                initial: () => const SizedBox(),
                loading: () => const SizedBox(),
                loaded: (data) => Column(
                  children: [
                    ListHeader(title: 'My mentors', onShowAll: () {}),
                    Gap(2.h),
                    Column(
                      children: [
                        for (int i = 0;
                            i < min(data.mentors.length, 6);
                            i += 2) ...[
                          Row(
                            children: [
                              Expanded(
                                child: MentorListTile(
                                  mentor: data.mentors[i],
                                ),
                              ),
                              Gap(4.w),
                              if (i + 1 < data.mentors.length) ...[
                                Expanded(
                                  child: MentorListTile(
                                    mentor: data.mentors[i + 1],
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
                    if (data.patients.isNotEmpty) ...[
                      Divider(height: 4.h),
                      ListHeader(title: 'My patients', onShowAll: () {}),
                      Gap(2.h),
                      Column(
                        children: [
                          for (int i = 0;
                              i < min(data.patients.length, 6);
                              i += 2) ...[
                            Row(
                              children: [
                                Expanded(
                                  child: PatientListTile(
                                    patient: data.patients[i],
                                  ),
                                ),
                                Gap(4.w),
                                if (i + 1 < data.patients.length) ...[
                                  Expanded(
                                    child: PatientListTile(
                                      patient: data.patients[i + 1],
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
                    Divider(height: 4.h),
                    ListHeader(title: 'My doctors (test)', onShowAll: () {}),
                    Gap(2.h),
                    Row(
                      children: [
                        Expanded(
                          child: DoctorListTile(
                            doctor: DoctorEntity.empty(),
                          ),
                        ),
                        Gap(4.w),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ],
                ),
                failed: () => const SizedBox(),
              ),
            ),
          ),
        );
      },
    );
  }
}
