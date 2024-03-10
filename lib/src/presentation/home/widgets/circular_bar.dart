import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class CircularBar extends StatelessWidget {
  const CircularBar({
    super.key,
    required this.current,
    required this.total,
  });

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    return CircularSeekBar(
      width: 12.h,
      height: 12.h,
      progress: (current / total) * 100,
      barWidth: 8,
      startAngle: 0,
      sweepAngle: 360,
      strokeCap: StrokeCap.round,
      progressColor: AppColors.primary,
      innerThumbRadius: 0,
      trackColor: AppColors.white,
      innerThumbStrokeWidth: 0,
      outerThumbRadius: 0,
      outerThumbStrokeWidth: 0,
      animation: true,
      interactive: false,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          current.toString(),
          style: context.textTheme.headlineLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
