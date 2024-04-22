import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:teeth_align_app/src/core/services/modal_bottom_sheet.dart';
import 'package:teeth_align_app/src/presentation/calendar/blocs/calendar_bloc/calendar_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/blocs/calendar_date_bloc/calendar_date_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/meeting_data_source.dart';
import 'package:teeth_align_app/src/presentation/calendar/views/create_event_modal_view.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarDateBloc, CalendarDateState>(
      builder: (context, dateState) {
        return BlocBuilder<CalendarBloc, CalendarState>(
          builder: (context, state) {
            return Scaffold(
              appBar: MyAppBar(
                title: const Text('Календарь'),
                actions: [
                  GestureDetector(
                    onTap: () => MBS.show(
                      context,
                      CreateEventModalView(
                        isEdit: false,
                        callback: () => context.read<CalendarBloc>().add(
                              GetEvents(dateState.start, dateState.end),
                            ),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.primary,
                    ),
                  ),
                  Gap(4.w),
                ],
              ),
              body: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: _SfCalendar(
                        controller: _controller,
                        dateState: dateState,
                        state: state,
                      ),
                    ),
                    state.loading
                        ? const Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: CircularLoader(),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _SfCalendar extends StatelessWidget {
  const _SfCalendar({
    required this.controller,
    required this.state,
    required this.dateState,
  });

  final CalendarController controller;
  final CalendarState state;
  final CalendarDateState dateState;

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      controller: controller,
      cellBorderColor: Colors.transparent,
      todayHighlightColor: AppColors.primary,
      backgroundColor: AppColors.background,
      initialSelectedDate: DateTime.now(),
      view: CalendarView.month,
      dataSource: MeetingDataSource(state.events),
      firstDayOfWeek: 1,
      allowDragAndDrop: true,
      showCurrentTimeIndicator: true,
      showDatePickerButton: true,
      showNavigationArrow: true,
      selectionDecoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      onViewChanged: (viewChangedDetails) {
        final start = viewChangedDetails.visibleDates.first;
        final end = viewChangedDetails.visibleDates.last;
        context.read<CalendarBloc>().add(GetEvents(start, end));
      },
      onTap: (calendarTapDetails) {
        if (calendarTapDetails.appointments != null) {
          if (calendarTapDetails.appointments!.isNotEmpty &&
              calendarTapDetails.appointments?.length == 1) {
            context.router.push(
              EventRoute(
                event: calendarTapDetails.appointments?.first,
                callback: () => context.read<CalendarBloc>().add(
                      GetEvents(
                        dateState.start,
                        dateState.end,
                      ),
                    ),
              ),
            );
          }
        }
      },
      monthViewSettings: const MonthViewSettings(
        showAgenda: true,
        navigationDirection: MonthNavigationDirection.vertical,
        appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
        showTrailingAndLeadingDates: false,
      ),
    );
  }
}
