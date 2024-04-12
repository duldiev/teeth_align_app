import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class BirthdateInput extends StatefulWidget {
  const BirthdateInput({
    super.key,
    required this.onPicked,
  });

  final void Function(DateTime dateTime) onPicked;

  @override
  State<BirthdateInput> createState() => _BirthdateInputState();
}

class _BirthdateInputState extends State<BirthdateInput> {
  late CarouselController _dayController;
  late CarouselController _monthController;
  late CarouselController _yearController;
  DateTime dateTime = DateTime(2001, 11, 9);

  @override
  void initState() {
    _dayController = CarouselController();
    _monthController = CarouselController();
    _yearController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.2),
        border: Border.all(color: AppColors.dark),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: List.generate(
          DateTimeType.values.length,
          (index) => Expanded(
            flex: index == 2 ? 3 : 2,
            child: _NumberPicker(
              controller: switch (DateTimeType.values[index]) {
                DateTimeType.days => _dayController,
                DateTimeType.months => _monthController,
                DateTimeType.years => _yearController,
              },
              dateTime: dateTime,
              type: DateTimeType.values[index],
              onPageChanged: (value, _, type) {
                switch (type) {
                  case DateTimeType.days:
                    {
                      setState(() {
                        dateTime = DateTime(
                          dateTime.year,
                          dateTime.month,
                          value,
                        );
                      });
                      break;
                    }
                  case DateTimeType.months:
                    {
                      setState(() {
                        dateTime = DateTime(
                          dateTime.year,
                          value,
                          dateTime.day,
                        );
                      });
                      _dayController.animateToPage(dateTime.day - 1);
                      break;
                    }
                  case DateTimeType.years:
                    {
                      setState(() {
                        dateTime = DateTime(
                          value,
                          dateTime.month,
                          dateTime.day,
                        );
                      });
                      _dayController.animateToPage(dateTime.day - 1);
                      break;
                    }
                }
                widget.onPicked(dateTime);
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
    required this.dateTime,
    required this.type,
    required this.onPageChanged,
  });

  final CarouselController controller;
  final DateTime dateTime;
  final DateTimeType type;
  final dynamic Function(
    int value,
    CarouselPageChangedReason reason,
    DateTimeType type,
  ) onPageChanged;

  @override
  State<_NumberPicker> createState() => __NumberPickerState();
}

class __NumberPickerState extends State<_NumberPicker> {
  int selectedValue = 1;

  @override
  void didChangeDependencies() {
    setState(() {
      selectedValue = switch (widget.type) {
        DateTimeType.days => widget.dateTime.day,
        DateTimeType.months => widget.dateTime.month,
        DateTimeType.years => widget.dateTime.year,
      };
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final start = switch (widget.type) {
      DateTimeType.days => 1,
      DateTimeType.months => 1,
      DateTimeType.years => 1960,
    };

    final value = switch (widget.type) {
      DateTimeType.days => DateTime(
          widget.dateTime.year,
          widget.dateTime.month + 1,
          0,
        ).day,
      DateTimeType.months => 12,
      DateTimeType.years => 2020 - 1960,
    };

    final list = List.generate(value, (index) => index + start);

    return CarouselSlider(
      carouselController: widget.controller,
      items: List.generate(value, (index) {
        final value = index + start;
        TextStyle? textStyle;
        if (value == selectedValue) {
          textStyle = context.textTheme.titleLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          );
        } else {
          textStyle = context.textTheme.titleLarge?.copyWith(
            color: AppColors.dark,
            fontWeight: FontWeight.w500,
          );
        }
        return Align(
          alignment: Alignment.center,
          child: Text(
            '$value',
            style: textStyle,
          ).animate().fade().scaleXY(),
        );
      }),
      options: CarouselOptions(
        initialPage: switch (widget.type) {
          DateTimeType.days => list.indexOf(widget.dateTime.day),
          DateTimeType.months => list.indexOf(widget.dateTime.month),
          DateTimeType.years => list.indexOf(widget.dateTime.year),
        },
        scrollDirection: Axis.vertical,
        height: 120,
        reverse: true,
        viewportFraction: 0.32,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
        onPageChanged: (index, reason) => setState(() {
          selectedValue = list[index];
          widget.onPageChanged(list[index], reason, widget.type);
        }),
      ),
    );
  }
}
