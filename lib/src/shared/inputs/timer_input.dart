import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class TimerInput extends StatefulWidget {
  const TimerInput({
    super.key,
    required this.onPicked,
  });

  final void Function(Duration duration) onPicked;

  @override
  State<TimerInput> createState() => _TimerInputState();
}

class _TimerInputState extends State<TimerInput> {
  Duration duration = const Duration(seconds: 0);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Set timer',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(2.h),
            _TimerNumberInput(
              onPicked: (duration) => setState(
                () => this.duration = duration,
              ),
            ),
            Gap(1.h),
            ColoredButton(
              onTap: () {
                widget.onPicked(duration);
                context.router.maybePop();
              },
              title: 'Done',
              padding: EdgeInsets.symmetric(vertical: 0.8.h),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimerNumberInput extends StatefulWidget {
  const _TimerNumberInput({
    required this.onPicked,
  });

  final void Function(Duration duration) onPicked;

  @override
  State<_TimerNumberInput> createState() => __TimerNumberInputState();
}

class __TimerNumberInputState extends State<_TimerNumberInput> {
  late CarouselController _hhController;
  late CarouselController _mmController;
  late CarouselController _ssController;
  Duration duration = const Duration(seconds: 0);

  @override
  void initState() {
    _hhController = CarouselController();
    _mmController = CarouselController();
    _ssController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.1),
        border: Border.all(color: AppColors.dark),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: List.generate(
          TimerProperty.values.length,
          (index) => Expanded(
            child: _NumberPicker(
              controller: switch (TimerProperty.values[index]) {
                TimerProperty.hh => _hhController,
                TimerProperty.mm => _mmController,
                TimerProperty.ss => _ssController,
              },
              duration: duration,
              property: TimerProperty.values[index],
              onPageChanged: (value, type) {
                switch (type) {
                  case TimerProperty.hh:
                    {
                      setState(() {
                        duration = Duration(
                          seconds: value * 3600 +
                              (duration.inSeconds - duration.inHours * 3600),
                        );
                      });
                      break;
                    }
                  case TimerProperty.mm:
                    {
                      setState(() {
                        duration = Duration(
                          seconds: value * 60 +
                              (duration.inSeconds -
                                  (duration.inMinutes % 60 * 60)),
                        );
                      });
                      break;
                    }
                  case TimerProperty.ss:
                    {
                      setState(() {
                        duration = Duration(
                          seconds: duration.inSeconds -
                              duration.inSeconds % 60 +
                              value,
                        );
                      });
                      break;
                    }
                }
                widget.onPicked(duration);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _NumberPicker extends StatefulWidget {
  const _NumberPicker({
    required this.controller,
    required this.duration,
    required this.property,
    required this.onPageChanged,
  });

  final CarouselController controller;
  final Duration duration;
  final TimerProperty property;
  final dynamic Function(
    int value,
    TimerProperty property,
  ) onPageChanged;

  @override
  State<_NumberPicker> createState() => __NumberPickerState();
}

class __NumberPickerState extends State<_NumberPicker> {
  int selectedValue = 0;

  @override
  void didChangeDependencies() {
    setState(() {
      selectedValue = switch (widget.property) {
        TimerProperty.hh => widget.duration.inSeconds,
        TimerProperty.mm => widget.duration.inMinutes,
        TimerProperty.ss => widget.duration.inSeconds,
      };
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final value = switch (widget.property) {
      TimerProperty.hh => 24,
      TimerProperty.mm => 60,
      TimerProperty.ss => 60,
    };

    final identifier = switch (widget.property) {
      TimerProperty.hh => 'h',
      TimerProperty.mm => 'm',
      TimerProperty.ss => 's',
    };

    final list = List.generate(value, (index) => index);

    return CarouselSlider(
      carouselController: widget.controller,
      items: List.generate(value, (index) {
        final value = index;
        TextStyle? textStyle;
        TextStyle? identifierTextStyle;

        if (value == selectedValue) {
          textStyle = context.textTheme.titleLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          );
          identifierTextStyle = context.textTheme.labelMedium?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          );
        } else {
          textStyle = context.textTheme.titleLarge?.copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          );
          identifierTextStyle = context.textTheme.labelMedium?.copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          );
        }
        return Align(
          alignment: Alignment.center,
          child: Text.rich(
            TextSpan(
              text: '$value',
              children: [
                TextSpan(
                  text: identifier.toUpperCase(),
                  style: identifierTextStyle,
                ),
              ],
            ),
            style: textStyle,
          ).animate().fade().scaleXY(),
        );
      }),
      options: CarouselOptions(
        initialPage: switch (widget.property) {
          TimerProperty.hh => list.indexOf(widget.duration.inHours),
          TimerProperty.mm => list.indexOf(widget.duration.inMinutes),
          TimerProperty.ss => list.indexOf(widget.duration.inSeconds),
        },
        scrollDirection: Axis.vertical,
        height: 150,
        reverse: true,
        viewportFraction: 0.32,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
        onPageChanged: (index, reason) => setState(() {
          selectedValue = list[index];
          // log('$valueSeconds $remainder');
          // log('${Duration(seconds: (all - remainder) + valueSeconds)}');
          widget.onPageChanged(list[index], widget.property);
        }),
      ),
    );
  }
}
