part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nextField(
    void Function(bool isLast) callback,
  ) = NextField;

  const factory SignUpEvent.prevField(
    void Function(bool isFirst) callback,
  ) = PrevField;
}
