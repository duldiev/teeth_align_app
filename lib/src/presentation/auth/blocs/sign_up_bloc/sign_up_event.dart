part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nextField() = NextField;

  const factory SignUpEvent.prevField() = PrevField;

  const factory SignUpEvent.changeRegisterField({
    required SignUpField field,
    required dynamic value,
  }) = ChangeRegisterField;

  const factory SignUpEvent.changeProfileField({
    required ProfileField field,
    required dynamic value,
  }) = ChangeProfileField;

  const factory SignUpEvent.pickImage() = PickImage;
}
