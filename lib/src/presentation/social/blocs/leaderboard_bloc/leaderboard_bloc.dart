import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';
part 'leaderboard_bloc.freezed.dart';

@injectable
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final IAdminRepository repository;

  LeaderboardBloc({
    required this.repository,
  }) : super(const LeaderboardState.initial()) {
    on<GetList>(onGetList);
  }

  LeaderboardStateViewModel viewModel = LeaderboardStateViewModel();

  Future<void> onGetList(
    GetList event,
    Emitter<LeaderboardState> emit,
  ) async {
    emit(const LeaderboardState.loading());

    (await repository.getAllDoctors()).fold(
      (l) => emit(const LeaderboardState.failed()),
      (r) {
        viewModel = viewModel.copyWith(leaders: r);
        emit(LeaderboardState.loaded(viewModel: viewModel));
      },
    );
  }
}
