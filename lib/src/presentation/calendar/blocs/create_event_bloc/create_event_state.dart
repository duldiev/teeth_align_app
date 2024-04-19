part of 'create_event_bloc.dart';

@freezed
class CreateEventState with _$CreateEventState {
  factory CreateEventState({
    required bool loading,
    required bool success,
    required Meeting formDataEvent,
    required bool isValid,
    required bool failed,
    required bool isEdit,
  }) = _CreateEventState;

  const CreateEventState._();

  factory CreateEventState.initial() => CreateEventState(
        loading: false,
        success: false,
        formDataEvent: Meeting.empty(),
        isValid: false,
        failed: false,
        isEdit: false,
      );
}
