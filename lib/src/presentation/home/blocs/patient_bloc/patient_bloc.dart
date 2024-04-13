import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/data/body/patient_case_body.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_patient_repository.dart';

part 'patient_event.dart';
part 'patient_state.dart';
part 'patient_bloc.freezed.dart';

@injectable
class PatientBloc extends Bloc<PatientEvent, PatientState> {
  final IPatientRepository repository;
  final ImagePicker imagePicker;

  PatientBloc({
    required this.repository,
    required this.imagePicker,
  }) : super(const PatientState.initial()) {
    on<GetPatient>(onGetPatient);
    on<GetCases>(onGetCases);
    on<PostCase>(onPostCase);
  }

  PatientStateViewModel viewModel = PatientStateViewModel();

  Future<void> onGetPatient(
    GetPatient event,
    Emitter<PatientState> emit,
  ) async {
    emit(const PatientState.loading());

    (await repository.getPatient(event.id)).fold(
      (l) => emit(const PatientState.failed()),
      (r) {
        viewModel = viewModel.copyWith(patient: r);
        emit(PatientState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetCases(
    GetCases event,
    Emitter<PatientState> emit,
  ) async {
    if (event.patientId == null && viewModel.patient?.id == null) return;

    emit(const PatientState.loading());

    (await repository.getPatientCase(
      event.patientId ?? viewModel.patient!.id,
    ))
        .fold(
      (l) => emit(const PatientState.failed()),
      (r) {
        viewModel = viewModel.copyWith(cases: r);
        emit(PatientState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onPostCase(
    PostCase event,
    Emitter<PatientState> emit,
  ) async {
    emit(const PatientState.loading());

    (await repository.createPatientCase(
      appData.userId,
      event.body,
    ))
        .fold(
      (l) => emit(PatientState.loaded(viewModel: viewModel)),
      (r) => emit(PatientState.loaded(viewModel: viewModel)),
    );
  }
}
