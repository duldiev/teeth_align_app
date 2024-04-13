import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/mentor_bloc/mentor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/doctor_list_tile.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/shared/app_bar/buttons/chat_button.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class MentorHomeScreen extends StatelessWidget {
  const MentorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorBloc, MentorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            title: const LogoTitle(),
            centerTitle: true,
            actions: [
              const ChatButton(),
              Gap(4.w),
            ],
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
                    ListHeader(title: 'My doctors', onShowAll: () {}),
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
