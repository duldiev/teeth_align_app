part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _Initial;
  const factory DoctorState.loading() = _Loading;
  const factory DoctorState.loaded({
    required DoctorStateViewModel viewModel,
  }) = _Loaded;
  const factory DoctorState.failed() = _Failed;
}

@freezed
class DoctorStateViewModel with _$DoctorStateViewModel {
  factory DoctorStateViewModel({
    @Default([]) List<MentorEntity> mentors,
    @Default([]) List<PatientEntity> patients,
    @Default(null) DoctorEntity? doctor,
  }) = _DoctorStateViewModel;
}
