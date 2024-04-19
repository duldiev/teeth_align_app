import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/date_helper.dart';

part 'calendar_date_event.dart';
part 'calendar_date_state.dart';
part 'calendar_date_bloc.freezed.dart';

@injectable
class CalendarDateBloc extends Bloc<CalendarDateEvent, CalendarDateState> {
  CalendarDateBloc() : super(CalendarDateState.initial()) {
    on<NextMonth>(onNextMonth);
    on<PrevMonth>(onPrevMonth);
  }

  void onNextMonth(
    NextMonth event,
    Emitter<CalendarDateState> emit,
  ) =>
      emit(state.copyWith(
        start: state.start.copyWith(
          month: state.start.month + 1,
        ),
      ));

  void onPrevMonth(
    PrevMonth event,
    Emitter<CalendarDateState> emit,
  ) =>
      emit(state.copyWith(
        end: state.end.copyWith(
          month: state.end.month + 1,
        ),
      ));
}
