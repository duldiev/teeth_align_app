import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/domain/entity/access_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

part 'doctor_access_event.dart';
part 'doctor_access_state.dart';
part 'doctor_access_bloc.freezed.dart';

@injectable
class DoctorAccessBloc extends Bloc<DoctorAccessEvent, DoctorAccessState> {
  final IAdminRepository repository;

  DoctorAccessBloc({required this.repository})
      : super(const DoctorAccessState.initial()) {
    on<GenerateCode>(onGenerateCode);
    on<GetAccesses>(onGetAccesses);
  }

  DoctorAccessStateViewModel viewModel = DoctorAccessStateViewModel();

  Future<void> onGenerateCode(
    GenerateCode event,
    Emitter<DoctorAccessState> emit,
  ) async {
    emit(const DoctorAccessState.loading());

    (await repository.generateCode()).fold(
      (l) => emit(const DoctorAccessState.failed()),
      (r) {
        viewModel = viewModel.copyWith(newGeneratedCode: r);
        emit(DoctorAccessState.loaded(viewModel: viewModel));
        add(const GetAccesses());
      },
    );
  }

  Future<void> onGetAccesses(
    GetAccesses event,
    Emitter<DoctorAccessState> emit,
  ) async {
    emit(const DoctorAccessState.loading());

    (await repository.getAccesses()).fold(
      (l) => emit(const DoctorAccessState.failed()),
      (r) {
        viewModel = viewModel.copyWith(accesses: r.reversed.toList());
        emit(DoctorAccessState.loaded(viewModel: viewModel));
      },
    );
  }
}
