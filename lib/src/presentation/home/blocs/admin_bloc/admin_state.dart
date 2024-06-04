part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial() = _Initial;
  const factory AdminState.loading() = _Loading;
  const factory AdminState.loaded({
    required AdminStateViewModel viewModel,
  }) = _Loaded;
  const factory AdminState.failed() = _Failed;
}

@freezed
class AdminStateViewModel with _$AdminStateViewModel {
  factory AdminStateViewModel({
    @Default([]) List<DoctorEntity> doctors,
    @Default([]) List<MentorEntity> mentors,
    @Default([]) List<PatientEntity> patients,
    @Default(false) bool isNoData,
    @Default(null) AdminEntity? admin,
  }) = _AdminStateViewModel;
}
