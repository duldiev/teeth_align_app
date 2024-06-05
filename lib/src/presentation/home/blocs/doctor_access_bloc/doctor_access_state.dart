part of 'doctor_access_bloc.dart';

@freezed
class DoctorAccessState with _$DoctorAccessState {
  const factory DoctorAccessState.initial() = _Initial;
  const factory DoctorAccessState.loading() = _Loading;
  const factory DoctorAccessState.loaded({
    required DoctorAccessStateViewModel viewModel,
  }) = _Loaded;
  const factory DoctorAccessState.failed() = _Failed;
}

@freezed
class DoctorAccessStateViewModel with _$DoctorAccessStateViewModel {
  factory DoctorAccessStateViewModel({
    @Default([]) List<AccessEntity> accesses,
    @Default(null) String? newGeneratedCode,
  }) = _DoctorStateViewModel;
}
