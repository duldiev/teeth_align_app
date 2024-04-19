part of 'calendar_date_bloc.dart';

@freezed
class CalendarDateEvent with _$CalendarDateEvent {
  const factory CalendarDateEvent.nextMonth() = NextMonth;
  const factory CalendarDateEvent.prevMonth() = PrevMonth;
}
