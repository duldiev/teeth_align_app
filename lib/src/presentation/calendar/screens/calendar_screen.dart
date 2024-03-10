import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';

@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 4.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime(2020),
                lastDay: DateTime.now(),
                startingDayOfWeek: StartingDayOfWeek.monday,
              ),
              Gap(4.h),
              Column(
                children: [
                  ColoredButton(
                    onTap: () {},
                    title: 'Нужно сделать снимок',
                  ),
                  Gap(2.h),
                  ColoredButton(
                    onTap: () {},
                    title: 'Свободно',
                  ),
                  Gap(2.h),
                  ColoredButton(
                    onTap: () {},
                    title: 'Нужно сделать снимок',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
