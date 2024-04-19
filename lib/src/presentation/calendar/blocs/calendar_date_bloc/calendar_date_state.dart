part of 'calendar_date_bloc.dart';

@freezed
class CalendarDateState with _$CalendarDateState {
  factory CalendarDateState({
    required DateTime start,
    required DateTime end,
  }) = _CalendarDateState;

  const CalendarDateState._();

  factory CalendarDateState.initial() => CalendarDateState(
        start: DateHelper.currentStartMonth,
        end: DateHelper.nextStartMonth,
      );
}
