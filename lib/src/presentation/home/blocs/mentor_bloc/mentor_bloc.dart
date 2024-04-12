import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_mentor_repository.dart';

part 'mentor_event.dart';
part 'mentor_state.dart';
part 'mentor_bloc.freezed.dart';

class MentorBloc extends Bloc<MentorEvent, MentorState> {
  final IMentorRepository repository;

  MentorBloc({required this.repository}) : super(const MentorState.initial()) {
    on<GetDoctors>(onGetDoctors, transformer: sequential());
  }

  MentorStateViewModel viewModel = MentorStateViewModel();

  Future<void> onGetDoctors(
    GetDoctors event,
    Emitter<MentorState> emit,
  ) async {
    emit(const MentorState.loading());

    (await repository.getDoctors(appData.userId)).fold(
      (l) => emit(const MentorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(doctors: r);
        emit(MentorState.loaded(viewModel: viewModel));
      },
    );
  }
}
