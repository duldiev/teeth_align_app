import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor_event.dart';
part 'mentor_state.dart';
part 'mentor_bloc.freezed.dart';

class MentorBloc extends Bloc<MentorEvent, MentorState> {
  MentorBloc() : super(_Initial()) {
    on<MentorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
