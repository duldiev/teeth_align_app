part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    @Default(null) SignInBody? signInBody,
    @Default(LoadStatus.initial) LoadStatus status,
  }) = _SignInState;

  const SignInState._();
}
