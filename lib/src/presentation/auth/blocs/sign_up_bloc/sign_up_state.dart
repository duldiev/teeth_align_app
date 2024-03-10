part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(SUFV.role) SUFV currentFieldsView,
    @Default(1) int currentStepNumber,
  }) = _SignUpState;

  const SignUpState._();
}
