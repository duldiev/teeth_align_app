part of 'mentor_bloc.dart';

@freezed
class MentorState with _$MentorState {
  const factory MentorState.initial() = _Initial;
  const factory MentorState.loading() = _Loading;
  const factory MentorState.loaded({
    required MentorStateViewModel viewModel,
  }) = _Loaded;
  const factory MentorState.failed() = _Failed;
}

@freezed
class MentorStateViewModel with _$MentorStateViewModel {
  factory MentorStateViewModel({
    @Default(null) MentorEntity? mentor,
    @Default([]) List<DoctorEntity> doctors,
  }) = _MentorStateViewModel;
}
