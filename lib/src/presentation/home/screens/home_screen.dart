import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/circular_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 2.h,
          ),
          child: Column(
            children: [
              const LogoTitle(),
              Gap(6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularBar(
                    current: 12,
                    total: 31,
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
                  const CircularBar(
                    current: 4,
                    total: 10,
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
                  const CircularBar(
                    current: 36,
                    total: 60,
                  ),
                  Gap(6.w),
                  Text(
                    'Таймер\nвывода',
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Gap(8.h),
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
