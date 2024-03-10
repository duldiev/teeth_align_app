import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState()) {
    on<NextField>(onNextField);
    on<PrevField>(onPrevField);
  }

  void onNextField(
    NextField event,
    Emitter<SignUpState> emit,
  ) async {
    final currentFieldsView = state.currentFieldsView;

    switch (currentFieldsView) {
      case SUFV.role:
        {
          break;
        }
      case SUFV.emailPassword:
        {
          break;
        }
      case SUFV.code:
        {
          break;
        }
      case SUFV.barcode:
        {
          break;
        }
      default:
        break;
    }

    emit(state.copyWith(
      currentFieldsView: switch (state.currentFieldsView) {
        SUFV.role => SUFV.emailPassword,
        SUFV.emailPassword => SUFV.code,
        SUFV.code => SUFV.barcode,
        SUFV.barcode => SUFV.finish,
        SUFV.finish => SUFV.finish,
      },
    ));
    emit(state.copyWith(
      currentStepNumber: SUFV.values.indexOf(state.currentFieldsView) + 1,
    ));
  }

  void onPrevField(
    PrevField event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      currentFieldsView: switch (state.currentFieldsView) {
        SUFV.role => SUFV.role,
        SUFV.emailPassword => SUFV.role,
        SUFV.code => SUFV.emailPassword,
        SUFV.barcode => SUFV.code,
        SUFV.finish => SUFV.barcode,
      },
    ));
    emit(state.copyWith(
      currentStepNumber: SUFV.values.indexOf(state.currentFieldsView) + 1,
    ));
  }
}
