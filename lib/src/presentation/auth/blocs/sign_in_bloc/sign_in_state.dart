part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    @Default(null) SignInBody? signInBody,
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(null) AccountEntity? account,
    @Default(false) bool isAlignerSettingsSet,
  }) = _SignInState;

  const SignInState._();
}
