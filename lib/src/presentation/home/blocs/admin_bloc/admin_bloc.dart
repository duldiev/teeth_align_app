import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final IAdminRepository repository;

  AdminBloc({required this.repository}) : super(const AdminState.initial()) {
    on<GetMentors>(onGetMentors);
    on<GetPatients>(onGetPatients);
    on<GetDoctors>(onGetDoctors);

    add(const GetMentors());
    add(const GetPatients());
    add(const GetDoctors());
  }

  AdminStateViewModel viewModel = AdminStateViewModel();

  Future<void> onGetMentors(
    GetMentors event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllMentors()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(mentors: r);
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetPatients(
    GetPatients event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllPatients()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(patients: r);
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }

  Future<void> onGetDoctors(
    GetDoctors event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());

    (await repository.getAllDoctors()).fold(
      (l) => emit(const AdminState.failed()),
      (r) {
        viewModel = viewModel.copyWith(doctors: r);
        emit(AdminState.loaded(viewModel: viewModel));
      },
    );
  }
}
