import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/register_body.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/profile_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_auth_repository.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';
import 'package:teeth_align_app/src/domain/repository/i_profile_repository.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/auth/core/keys.dart';
import 'package:teeth_align_app/src/router/app_router.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

typedef SUB = SignUpBloc;

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthRepository authRepository;
  final IProfileRepository profileRepository;
  final IDoctorRepository doctorRepository;
  final ImagePicker imagePicker;
  final AppRouter router;

  SignUpBloc({
    required this.authRepository,
    required this.profileRepository,
    required this.doctorRepository,
    required this.imagePicker,
    required this.router,
  }) : super(SignUpState(
          registerBody: RegisterBody.empty(),
          doctorProfileBody: DoctorEntity.empty(),
        )) {
    on<NextField>(onNextField);
    on<PrevField>(onPrevField);
    on<ChangeRegisterField>(onChangeRegisterField);
    on<ChangeProfileField>(onChangeProfileField);
    on<ChangeDProfileField>(onChangeDProfileField);
    on<PickImage>(onPickImage);
    on<CreateDoctor>(onCreateDoctor);
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
          SignUpField.role => state.registerBody?.copyWith(
              role: event.value,
            ),
          SignUpField.uniqueId => state.registerBody?.copyWith(
              uniqueId: event.value,
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

  void onChangeDProfileField(
    ChangeDProfileField event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        doctorProfileBody: switch (event.field) {
          DProfileField.firstName => state.doctorProfileBody!.copyWith(
              firstName: event.value,
            ),
          DProfileField.lastName => state.doctorProfileBody!.copyWith(
              lastName: event.value,
            ),
          DProfileField.clinicName => state.doctorProfileBody!.copyWith(
              clinicName: event.value,
            ),
          DProfileField.speciality => state.doctorProfileBody!.copyWith(
              speciality: event.value,
            ),
          DProfileField.education => state.doctorProfileBody!.copyWith(
              education: event.value,
            ),
          DProfileField.workExperience => state.doctorProfileBody!.copyWith(
              workExperience: int.tryParse(event.value) ?? 0,
            ),
        },
      ));

  Future<bool> onRegister(
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    final result = await authRepository.register(
      body: state.registerBody!,
    );

    return result.fold(
      (l) {
        emit(state.copyWith(status: LoadStatus.failed));
        return false;
      },
      (r) {
        emit(state.copyWith(status: LoadStatus.success));
        return true;
      },
    );
  }

  Future<bool> onActivate(
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    final result = await authRepository.activate(body: state.registerBody!);

    return result.fold(
      (l) {
        emit(state.copyWith(status: LoadStatus.failed));
        return false;
      },
      (r) {
        emit(state.copyWith(status: LoadStatus.success));
        return true;
      },
    );
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
      case SUFV.uniqueId:
        {
          if (!patientFormKey.currentState!.validate()) return;
          break;
        }
      case SUFV.emailPassword:
        {
          if (emailPasswordFormKey.currentState!.validate()) {
            if (!(await onRegister(emit))) return;
          } else {
            return;
          }
          break;
        }
      case SUFV.code:
        {
          if (state.registerBody!.code.length == 6) {
            if (!(await onActivate(emit))) return;
          } else {
            return;
          }
          break;
        }

      case SUFV.finish:
        {
          if (state.registerBody!.role == Role.patient) {
            router
              ..popUntilRoot()
              ..replace(const SplashRoute());
          }
          if (state.registerBody!.role == Role.doctor) {
            router
              ..popUntilRoot()
              ..replace(const DoctorCreateProfileRoute());
          }
          break;
        }
      default:
        break;
    }

    emit(state.copyWith(
      currentFieldsView: switch (state.currentFieldsView) {
        SUFV.role => SUFV.uniqueId,
        SUFV.uniqueId => SUFV.emailPassword,
        SUFV.emailPassword => SUFV.code,
        SUFV.code => SUFV.finish,
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
        SUFV.uniqueId => SUFV.role,
        SUFV.emailPassword => SUFV.uniqueId,
        SUFV.code => SUFV.emailPassword,
        SUFV.finish => SUFV.code,
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

  Future<void> onCreateDoctor(
    CreateDoctor event,
    Emitter<SignUpState> emit,
  ) async {
    if (state.doctorProfileBody == null) return;

    emit(state.copyWith(status: LoadStatus.loading));

    (await doctorRepository.createProfile(state.doctorProfileBody!)).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) {
        router
          ..popUntilRoot()
          ..replace(const SplashRoute());
        emit(state.copyWith(status: LoadStatus.success));
      },
    );
  }
}
