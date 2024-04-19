part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.initial() = _Initial;
  const factory LeaderboardState.loading() = _Loading;
  const factory LeaderboardState.loaded({
    required LeaderboardStateViewModel viewModel,
  }) = _Loaded;
  const factory LeaderboardState.failed() = _Failed;
}

@freezed
class LeaderboardStateViewModel with _$LeaderboardStateViewModel {
  factory LeaderboardStateViewModel({
    @Default([]) List<DoctorEntity> leaders,
  }) = _LeaderboardStateViewModel;

  const LeaderboardStateViewModel._();
}
