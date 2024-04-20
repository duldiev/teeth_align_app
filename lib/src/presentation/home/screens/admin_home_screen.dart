import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/doctor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/mentor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/patient_list_tile.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

@RoutePage()
class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            title: const Text('Добро пожаловать, Arman!'),
            titleTextStyle: context.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            centerTitle: false,
            automaticallyImplyLeading: false,
            actions: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.search,
                  size: 20,
                ),
              ),
              Gap(4.w),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              clipBehavior: Clip.none,
              child: state.when(
                initial: () => const SizedBox(),
                loading: () => const SizedBox(),
                loaded: (data) => Column(
                  children: [
                    if (data.mentors.isNotEmpty) ...[
                      Divider(height: 4.h),
                      ListHeader(
                        title: 'Мои менторы',
                        onShowAll: () => context.router.push(
                          AccountListRoute(accounts: data.mentors),
                        ),
                      ),
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
                            Gap(2.h),
                          ],
                        ],
                      ),
                    ],
                    if (data.doctors.isNotEmpty) ...[
                      Divider(height: 4.h),
                      ListHeader(
                        title: 'Мои доктора',
                        onShowAll: () => context.router.push(
                          AccountListRoute(accounts: data.doctors),
                        ),
                      ),
                      Gap(2.h),
                      Column(
                        children: [
                          for (int i = 0;
                              i < min(data.doctors.length, 6);
                              i += 2) ...[
                            Row(
                              children: [
                                Expanded(
                                  child: DoctorListTile(
                                    doctor: data.doctors[i],
                                  ),
                                ),
                                Gap(4.w),
                                if (i + 1 < data.doctors.length) ...[
                                  Expanded(
                                    child: DoctorListTile(
                                      doctor: data.doctors[i + 1],
                                    ),
                                  ),
                                ] else ...[
                                  const Expanded(child: SizedBox()),
                                ],
                              ],
                            ),
                            Gap(2.h),
                          ],
                        ],
                      ),
                    ],
                    if (data.patients.isNotEmpty) ...[
                      Divider(height: 4.h),
                      ListHeader(
                        title: 'Мои пациенты',
                        onShowAll: () => context.router.push(
                          AccountListRoute(accounts: data.patients),
                        ),
                      ),
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
                            Gap(2.h),
                          ],
                        ],
                      ),
                    ],
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
