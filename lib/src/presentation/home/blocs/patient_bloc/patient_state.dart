part of 'patient_bloc.dart';

@freezed
class PatientState with _$PatientState {
  const factory PatientState.initial() = _Initial;
  const factory PatientState.loading() = _Loading;
  const factory PatientState.loaded({
    required PatientStateViewModel viewModel,
  }) = _Loaded;
  const factory PatientState.failed() = _Failed;
}

@freezed
class PatientStateViewModel with _$PatientStateViewModel {
  factory PatientStateViewModel({
    @Default(null) PatientEntity? patient,
    @Default([]) List<CaseEntity> cases,
    @Default(null) PatientCaseBody? patientCaseBody,
    @Default(null) InitialSettingsBody? alignerSettingsBody,
  }) = _PatientStateViewModel;
}
