import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/rate_doctor_body.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';
import 'package:teeth_align_app/src/presentation/account/core/enums.dart';

part 'rate_doctor_event.dart';
part 'rate_doctor_state.dart';
part 'rate_doctor_bloc.freezed.dart';

typedef RDB = RateDoctorBloc;

@injectable
class RateDoctorBloc extends Bloc<RateDoctorEvent, RateDoctorState> {
  final IDoctorRepository repository;

  RateDoctorBloc({
    required this.repository,
  }) : super(RateDoctorState(body: RateDoctorBody.empty())) {
    on<ChangeField>(onChangeField);
    on<Send>(onSend);
  }

  void onChangeField(
    ChangeField event,
    Emitter<RateDoctorState> emit,
  ) =>
      emit(state.copyWith(
        body: switch (event.field) {
          RateDoctorField.stars => state.body!.copyWith(
              stars: event.value == state.body!.stars ? 0 : event.value as int,
            ),
          RateDoctorField.onlineExam => state.body!.copyWith(
              onlineExamination: event.value as bool,
            ),
          RateDoctorField.consultation => state.body!.copyWith(
              consultation: event.value as bool,
            ),
          RateDoctorField.medicineInstruction => state.body!.copyWith(
              medicineInstruction: event.value as bool,
            ),
          RateDoctorField.comment => state.body!.copyWith(
              comment: event.value as String,
            ),
        },
      ));

  void onSend(
    Send event,
    Emitter<RateDoctorState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    (await repository.rateDoctor(event.doctorId, state.body!)).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) => emit(state.copyWith(status: LoadStatus.success)),
    );
  }
}
