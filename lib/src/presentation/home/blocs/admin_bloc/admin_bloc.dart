import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final IAdminRepository repository;

  AdminBloc({required this.repository}) : super(const AdminState.initial()) {
    on<GetMentors>(onGetMentors, transformer: sequential());
    on<GetPatients>(onGetPatients, transformer: sequential());
    on<GetDoctors>(onGetDoctors, transformer: sequential());
    on<GetAll>(onGetAll, transformer: sequential());
    on<AssignDoctorsToMentors>(onAssignDoctorsToMentors);
  }

  AdminStateViewModel viewModel = AdminStateViewModel();

  Future<void> onGetMentors(
    GetMentors event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllMentors()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(
          mentors: r,
          isNoData: _isNoData(r),
        );
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetPatients(
    GetPatients event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllPatients()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(
          patients: r,
          isNoData: _isNoData(r),
        );
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetDoctors(
    GetDoctors event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllDoctors()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(
          doctors: r,
          isNoData: _isNoData(r),
        );
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }

  bool _isNoData([List<dynamic>? list]) {
    if (viewModel.doctors.isEmpty &&
        viewModel.mentors.isEmpty &&
        viewModel.patients.isEmpty &&
        list?.isEmpty != false) {
      return true;
    }
    return false;
  }

  Future<void> onGetAll(
    GetAll event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    List<DoctorEntity> doctors = (await repository.getAllDoctors()).fold(
      (l) => [],
      (r) => [],
    );
    List<MentorEntity> mentors = (await repository.getAllMentors()).fold(
      (l) => [],
      (r) => [],
    );
    List<PatientEntity> patients = (await repository.getAllPatients()).fold(
      (l) => [],
      (r) => [],
    );

    viewModel = viewModel.copyWith(
      doctors: doctors,
      mentors: mentors,
      patients: patients,
    );

    viewModel = viewModel.copyWith(isNoData: _isNoData());

    emit(AdminState.loaded(viewModel: viewModel));
  }

  Future<void> onAssignDoctorsToMentors(
    AssignDoctorsToMentors event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.pairMentorAndDoctor(
      event.mentorId,
      event.doctors.map((e) => e.id).toList(),
    ))
        .fold(
      (l) => emit(AdminState.loaded(viewModel: viewModel)),
      (r) => emit(AdminState.loaded(viewModel: viewModel)),
    );
  }
}
