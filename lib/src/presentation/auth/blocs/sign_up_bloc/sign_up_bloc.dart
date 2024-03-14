import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/register_body.dart';
import 'package:teeth_align_app/src/domain/entity/profile_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_auth_repository.dart';
import 'package:teeth_align_app/src/domain/repository/i_profile_repository.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/base/app.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthRepository authRepository;
  final IProfileRepository profileRepository;
  final ImagePicker imagePicker;

  SignUpBloc({
    required this.authRepository,
    required this.profileRepository,
    required this.imagePicker,
  }) : super(SignUpState()) {
    on<NextField>(onNextField);
    on<PrevField>(onPrevField);
    on<ChangeRegisterField>(onChangeRegisterField);
    on<ChangeProfileField>(onChangeProfileField);
    on<PickImage>(onPickImage);
  }

  void onChangeRegisterField(
    ChangeRegisterField event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        registerBody: switch (event.field) {
          SignUpField.code => state.registerBody?.copyWith(
              code: event.value,
            ),
          SignUpField.email => state.registerBody?.copyWith(
              email: event.value,
            ),
          SignUpField.password => state.registerBody?.copyWith(
              password: event.value,
            ),
          SignUpField.passwordConfirm => state.registerBody?.copyWith(
              passwordConfirm: event.value,
            ),
        },
      ));

  void onChangeProfileField(
    ChangeProfileField event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        profileBody: switch (event.field) {
          ProfileField.username => state.profileBody?.copyWith(
              username: event.value,
            ),
          ProfileField.firstName => state.profileBody?.copyWith(
              firstName: event.value,
            ),
          ProfileField.lastName => state.profileBody?.copyWith(
              lastName: event.value,
            ),
          ProfileField.gender => state.profileBody?.copyWith(
              gender: event.value,
            ),
          ProfileField.height => state.profileBody?.copyWith(
              height: event.value,
            ),
          ProfileField.birthDate => state.profileBody?.copyWith(
              birthDate: event.value,
            ),
          ProfileField.weight => state.profileBody?.copyWith(
              weight: event.value,
            ),
          ProfileField.role => state.profileBody?.copyWith(
              role: event.value,
            ),
        },
      ));

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
      case SUFV.finish:
        {
          router
            ..popUntilRoot()
            ..replace(const NavRouter());
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

  Future<void> onPickImage(
    PickImage event,
    Emitter<SignUpState> emit,
  ) async {
    XFile? image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1080,
      maxWidth: 1080,
    );
    emit(state.copyWith(pickedImage: image));
  }
}
