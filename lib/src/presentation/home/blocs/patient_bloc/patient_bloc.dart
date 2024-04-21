import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/data/body/initial_settings_body.dart';
import 'package:teeth_align_app/src/data/body/patient_case_body.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_patient_repository.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';

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
    on<UpdateAlignerSettings>(onUpdateAlignerSettings);
    on<ChangeSettings>(onChangeSettings);
    on<ApplyRefCode>(onApplyRefCode);
  }

  InitialSettingsBody alignerSettingsBody = InitialSettingsBody.empty();
  PatientStateViewModel viewModel = PatientStateViewModel(
    alignerSettingsBody: InitialSettingsBody.empty(),
  );

  Future<void> onGetPatient(
    GetPatient event,
    Emitter<PatientState> emit,
  ) async {
    emit(const PatientState.loading());

    (await repository.getPatient(event.id)).fold(
      (l) => emit(const PatientState.failed()),
      (r) {
        appData.patient = r;
        alignerSettingsBody = alignerSettingsBody.copyWith(
          maxSet: r.maxSet,
          currentSet: r.currentSet,
          reminderTime: r.reminderTime,
          wearDuration: r.wearDuration,
        );
        viewModel = viewModel.copyWith(
          patient: r,
          alignerSettingsBody: alignerSettingsBody,
        );
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

  Future<void> onUpdateAlignerSettings(
    UpdateAlignerSettings event,
    Emitter<PatientState> emit,
  ) async {
    emit(const PatientState.loading());

    (await repository.updateInitialSettings(alignerSettingsBody)).fold(
      (l) => emit(PatientState.loaded(viewModel: viewModel)),
      (r) {
        viewModel = viewModel.copyWith(
          alignerSettingsBody: alignerSettingsBody,
        );
        emit(PatientState.loaded(viewModel: viewModel));
      },
    );
  }

  void onChangeSettings(
    ChangeSettings event,
    Emitter<PatientState> emit,
  ) {
    alignerSettingsBody = switch (event.field) {
      AlignerSettingsField.currentSet => alignerSettingsBody.copyWith(
          currentSet: int.tryParse(event.value) ?? 0,
        ),
      AlignerSettingsField.maxSet => alignerSettingsBody.copyWith(
          maxSet: int.tryParse(event.value) ?? 0,
        ),
      AlignerSettingsField.wearDuration => alignerSettingsBody.copyWith(
          wearDuration: int.tryParse(event.value) ?? 0,
        ),
      AlignerSettingsField.reminderTime => alignerSettingsBody.copyWith(
          reminderTime: alignerSettingsBody.reminderTime.copyWith(
            hour: int.tryParse(event.value.substring(0, 2)) ?? 0,
            minute: int.tryParse(event.value.substring(3, 5)) ?? 0,
          ),
        ),
    };
    viewModel = viewModel.copyWith(
      alignerSettingsBody: alignerSettingsBody,
    );
    emit(PatientState.loaded(viewModel: viewModel));
  }

  Future<void> onApplyRefCode(
    ApplyRefCode event,
    Emitter<PatientState> emit,
  ) async {
    emit(const PatientState.loading());

    (await repository.applyRefCode(event.code)).fold(
      (l) => emit(const PatientState.failed()),
      (r) => emit(PatientState.loaded(viewModel: viewModel)),
    );
  }
}
