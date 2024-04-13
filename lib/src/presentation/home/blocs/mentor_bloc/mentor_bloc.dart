import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_mentor_repository.dart';

part 'mentor_event.dart';
part 'mentor_state.dart';
part 'mentor_bloc.freezed.dart';

@injectable
class MentorBloc extends Bloc<MentorEvent, MentorState> {
  final IMentorRepository repository;

  MentorBloc({required this.repository}) : super(const MentorState.initial()) {
    on<GetDoctors>(onGetDoctors, transformer: sequential());
    on<GetMentor>(onGetMentor, transformer: sequential());
    on<AssignDoctor>(onAssignDoctor);
    on<UnassignDoctor>(onUnassignDoctor);
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

  Future<void> onGetMentor(
    GetMentor event,
    Emitter<MentorState> emit,
  ) async {
    emit(const MentorState.loading());

    (await repository.getMentorById(event.id)).fold(
      (l) => emit(const MentorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(mentor: r);
        emit(MentorState.loaded(viewModel: viewModel));
      },
    );
  }

  void onAssignDoctor(
    AssignDoctor event,
    Emitter<MentorState> emit,
  ) {
    viewModel = viewModel.copyWith(
      mentor: viewModel.mentor?.copyWith(
        assignedDoctors: [
          ...(viewModel.mentor?.assignedDoctors ?? []),
          event.doctor
        ],
      ),
    );
    emit(MentorState.loaded(viewModel: viewModel));
  }

  void onUnassignDoctor(
    UnassignDoctor event,
    Emitter<MentorState> emit,
  ) {
    emit(const MentorState.loading());
    List<DoctorEntity> assignedDoctors = [
      ...(viewModel.mentor?.assignedDoctors ?? []),
    ];
    assignedDoctors.remove(event.doctor);
    viewModel = viewModel.copyWith(
      mentor: viewModel.mentor?.copyWith(
        assignedDoctors: assignedDoctors,
      ),
    );
    log(viewModel.mentor?.assignedDoctors.toString() ?? 'EMPTY');
    emit(MentorState.loaded(viewModel: viewModel));
  }
}
