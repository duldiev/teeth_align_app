import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/circular_bar.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/timer_circular_bar.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/buttons/chat_button.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/timer_input.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class PatientHomeScreen extends StatefulWidget {
  const PatientHomeScreen({super.key});

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  ValueNotifier<int> timerSeconds = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularBar(
                    current: appData.patient?.currentSet ?? 1,
                    total: appData.patient?.maxSet ?? 2,
                  ),
                  Gap(6.w),
                  Text(
                    'Текущий\nэлайнер',
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Gap(8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Осталось\nдо смены',
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Gap(6.w),
                  CircularBar(
                    current: appData.patient?.nextAlignerDate.left() ?? 0,
                    total: 13,
                  ),
                  Gap(4.w),
                  Text(
                    'дней',
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Gap(8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimerCircularBar(start: timerSeconds.value),
                  Gap(4.w),
                  InkWell(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => TimerInput(
                        duration: Duration(seconds: timerSeconds.value),
                        onPicked: (Duration duration) => setState(
                          () => timerSeconds.value = duration.inSeconds,
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Text(
                        'Таймер отдыха',
                        style: context.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (appData.role == Role.patient) ...[
                BlocBuilder<PatientBloc, PatientState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () => const SizedBox(),
                      loaded: (data) {
                        if (data.patient?.scanLink == null) {
                          return const SizedBox();
                        }
                        return Column(
                          children: [
                            Gap(4.h),
                            InkWell(
                              onTap: () => context.router.push(
                                DefaultWebView(url: data.patient!.scanLink!),
                              ),
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.success,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.scatter_plot_outlined,
                                      size: 16,
                                    ),
                                    Gap(1.w),
                                    Text(
                                      '3D Plan',
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      failed: () => const SizedBox(),
                    );
                  },
                ),
              ],
              Gap(2.h),
              Text(
                'Иструкций по элайнеру',
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
