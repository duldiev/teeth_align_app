import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_auth_repository.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

@injectable
class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final IDoctorRepository repository;
  final IAuthRepository authRepository;

  DoctorBloc({
    required this.repository,
    required this.authRepository,
  }) : super(const DoctorState.initial()) {
    on<GetMentors>(onGetMentors, transformer: sequential());
    on<GetPatients>(onGetPatients, transformer: sequential());
    on<GetDoctor>(onGetDoctor, transformer: sequential());
    on<GetDoctorMe>(onGetDoctorMe, transformer: sequential());
    on<ChangeField>(onChangeField, transformer: sequential());
    on<SaveFields>(onSaveFields, transformer: sequential());
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

  Future<void> onGetDoctor(
    GetDoctor event,
    Emitter<DoctorState> emit,
  ) async {
    emit(const DoctorState.loading());

    (await repository.getDoctorById(event.id)).fold(
      (l) => emit(const DoctorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(doctor: r);
        emit(DoctorState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetDoctorMe(
    GetDoctorMe event,
    Emitter<DoctorState> emit,
  ) async {
    emit(const DoctorState.loading());

    final userId = (await authRepository.getAccount()).fold(
      (l) => null,
      (r) => r.id,
    );

    if (userId == null) {
      emit(const DoctorState.failed());
      return;
    }

    (await repository.getDoctorById(userId)).fold(
      (l) => emit(const DoctorState.failed()),
      (r) {
        viewModel = viewModel.copyWith(doctor: r);
        emit(DoctorState.loaded(viewModel: viewModel));
      },
    );
  }

  void onChangeField(
    ChangeField event,
    Emitter<DoctorState> emit,
  ) {
    viewModel = viewModel.copyWith(
      doctor: switch (event.field) {
        DProfileField.firstName => viewModel.doctor?.copyWith(
            firstName: event.value,
          ),
        DProfileField.lastName => viewModel.doctor?.copyWith(
            lastName: event.value,
          ),
        DProfileField.clinicName => viewModel.doctor?.copyWith(
            clinicName: event.value,
          ),
        DProfileField.speciality => viewModel.doctor?.copyWith(
            speciality: event.value,
          ),
        DProfileField.city => viewModel.doctor?.copyWith(
            city: event.value,
          ),
        DProfileField.workExperience => viewModel.doctor?.copyWith(
            workExperience: int.tryParse(event.value) ?? 0,
          ),
      },
    );
  }

  Future<void> onSaveFields(
    SaveFields event,
    Emitter<DoctorState> emit,
  ) async {
    if (viewModel.doctor == null) return;

    emit(const DoctorState.loading());

    (await repository.updateProfile(viewModel.doctor!)).fold(
      (l) => emit(const DoctorState.failed()),
      (r) => emit(DoctorState.loaded(viewModel: viewModel)),
    );

    add(const GetDoctorMe());
  }
}
