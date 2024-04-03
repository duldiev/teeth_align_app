import 'dart:async';

import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/int_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class TimerCircularBar extends StatefulWidget {
  const TimerCircularBar({
    super.key,
    this.start = 10000,
  });

  final int start;

  @override
  State<TimerCircularBar> createState() => _TimerCircularBarState();
}

class _TimerCircularBarState extends State<TimerCircularBar> {
  Timer? timer;
  int start = 10000;

  @override
  void initState() {
    super.initState();
    startTimer(widget.start);
  }

  void startTimer(int startTimer) {
    setState(() {
      start = startTimer;
    });
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularSeekBar(
      width: 18.h,
      height: 18.h,
      progress: (start / widget.start) * 100,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(20),
          Text(
            '${start.inHours()}:${start.inMinutes()}:${start.inSeconds()}',
            style: context.textTheme.headlineSmall?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(10),
          if (timer?.isActive == true) ...[
            InkWell(
              onTap: () {
                timer?.cancel();
                setState(() {
                  start = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.danger,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.pause,
                  color: AppColors.white,
                  size: 30,
                ),
              ),
            ),
          ] else ...[
            InkWell(
              onTap: () => setState(() {
                startTimer(widget.start);
              }),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: AppColors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
