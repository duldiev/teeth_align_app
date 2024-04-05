import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.logo.svg(height: 30),
        Gap(2.w),
        Text(
          'teethalign',
          style: context.textTheme.headlineSmall?.copyWith(
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
