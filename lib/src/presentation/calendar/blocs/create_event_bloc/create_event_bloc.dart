import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/repository/i_calendar_repository.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/meeting.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';
part 'create_event_bloc.freezed.dart';

@injectable
class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc({
    required this.repository,
  }) : super(CreateEventState.initial()) {
    on<SetInitial>(onSetInitial);
    on<ChangeName>(onChangeName);
    on<ChangeDescription>(onChangeDescription);
    on<ChangeFromDate>(onChangeFromDate);
    on<ChangeToDate>(onChangeToDate);
    on<CreateEvent>(onCreateEvent);
    on<EditEvent>(onEditEvent);
    on<DeleteEvent>(onDeleteEvent);
    on<IsEdit>(onIsEdit);
  }

  final ICalendarRepository repository;

  void onSetInitial(
    SetInitial event,
    Emitter<CreateEventState> emit,
  ) =>
      emit(state.copyWith(
        formDataEvent: event.event ?? Meeting.empty(),
      ));

  void onIsEdit(
    IsEdit event,
    Emitter<CreateEventState> emit,
  ) =>
      emit(state.copyWith(isEdit: event.isEdit));

  void onChangeName(
    ChangeName event,
    Emitter<CreateEventState> emit,
  ) {
    emit(state.copyWith(
      formDataEvent: state.formDataEvent.copyWith(
        eventName: event.name,
      ),
      isValid: event.name.isNotEmpty,
    ));
  }

  void onChangeDescription(
    ChangeDescription event,
    Emitter<CreateEventState> emit,
  ) =>
      emit(state.copyWith(
        formDataEvent: state.formDataEvent.copyWith(
          eventName: event.description,
        ),
      ));

  void onChangeFromDate(
    ChangeFromDate event,
    Emitter<CreateEventState> emit,
  ) =>
      emit(state.copyWith(
        formDataEvent: state.formDataEvent.copyWith(
          from: event.from,
        ),
      ));

  void onChangeToDate(
    ChangeToDate event,
    Emitter<CreateEventState> emit,
  ) =>
      emit(state.copyWith(
        formDataEvent: state.formDataEvent.copyWith(
          to: event.to,
        ),
      ));

  Future<void> onCreateEvent(
    CreateEvent event,
    Emitter<CreateEventState> emit,
  ) async {
    emit(state.copyWith(
      loading: true,
      isValid: false,
      success: false,
    ));

    final result = await repository.createEvent(
      state.formDataEvent.toEntity(),
    );

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        failed: true,
      )),
      (r) => emit(state.copyWith(
        loading: false,
        formDataEvent: Meeting.empty(),
        success: true,
      )),
    );
  }

  Future<void> onEditEvent(
    EditEvent event,
    Emitter<CreateEventState> emit,
  ) async {
    emit(state.copyWith(
      loading: true,
      isValid: false,
      success: false,
    ));

    final result = await repository.editEvent(
      state.formDataEvent.toEntity(),
    );

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        failed: true,
      )),
      (r) => emit(state.copyWith(
        loading: false,
        formDataEvent: Meeting.empty(),
        success: true,
      )),
    );
  }

  Future<void> onDeleteEvent(
    DeleteEvent event,
    Emitter<CreateEventState> emit,
  ) async {
    emit(state.copyWith(
      loading: true,
      isValid: false,
      success: false,
    ));

    final result = await repository.deleteEvent(event.id);

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        failed: true,
      )),
      (r) => emit(state.copyWith(
        loading: false,
        formDataEvent: Meeting.empty(),
        success: true,
      )),
    );
  }
}
