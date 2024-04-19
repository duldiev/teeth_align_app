import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/repository/i_calendar_repository.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/meeting.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc({
    required this.repository,
  }) : super(CalendarState.initial()) {
    on<GetEvents>(onGetEvents);
  }

  final ICalendarRepository repository;

  Future<void> onGetEvents(
    GetEvents event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(loading: true, success: false));

    final result = await repository.getEvents(event.start, event.end);

    return result.fold(
      (l) {
        emit(state.copyWith(loading: false));
      },
      (r) {
        emit(state.copyWith(
          loading: false,
          success: true,
          events: r.map((e) => Meeting.parse(e)).toList(),
        ));
      },
    );
  }
}
