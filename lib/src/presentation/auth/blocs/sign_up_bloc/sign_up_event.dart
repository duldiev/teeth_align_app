part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nextField() = NextField;

  const factory SignUpEvent.prevField() = PrevField;
}
