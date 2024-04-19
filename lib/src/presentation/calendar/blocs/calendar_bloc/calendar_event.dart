part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getEvents(
    DateTime? start,
    DateTime? end,
  ) = GetEvents;
}
