part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  factory CalendarState({
    required List<Meeting> events,
    required bool loading,
    required bool success,
    required Meeting formDataEvent,
    required bool isValid,
    required String format,
    required bool failedToCreate,
  }) = _CalendarState;

  const CalendarState._();

  factory CalendarState.initial() => CalendarState(
        events: [],
        loading: false,
        success: false,
        formDataEvent: Meeting.empty(),
        isValid: false,
        format: 'MMMM d, HH:mm',
        failedToCreate: false,
      );
}
