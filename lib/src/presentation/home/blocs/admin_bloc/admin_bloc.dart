import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc() : super(_Initial()) {
    on<AdminEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
