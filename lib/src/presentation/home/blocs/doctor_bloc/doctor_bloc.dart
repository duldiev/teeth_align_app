import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

@injectable
class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final IDoctorRepository repository;

  DoctorBloc({required this.repository}) : super(const DoctorState.initial()) {
    on<GetMentors>(onGetMentors);
    on<GetPatients>(onGetPatients);

    add(const GetMentors());
    add(const GetPatients());
  }

  DoctorStateViewModel viewModel = DoctorStateViewModel();

  Future<void> onGetMentors(
    GetMentors event,
    Emitter<DoctorState> emit,
  ) async {
    emit(const DoctorState.loading());

    (await repository.getMentors(appData.userId)).fold(
      (l) => emit(const DoctorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(mentors: r);
        emit(DoctorState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetPatients(
    GetPatients event,
    Emitter<DoctorState> emit,
  ) async {
    emit(const DoctorState.loading());

    (await repository.getPatients(appData.userId)).fold(
      (l) => emit(const DoctorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(patients: r);
        emit(DoctorState.loaded(viewModel: viewModel));
      },
    );
  }
}
