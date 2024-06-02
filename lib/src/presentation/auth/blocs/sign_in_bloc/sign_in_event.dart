part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  // Sign in
  const factory SignInEvent.changeField({
    required SignInField field,
    required String value,
  }) = ChangeField;

  const factory SignInEvent.signIn() = SignIn;

  // Sign out

  const factory SignInEvent.signOut() = SignOut;

  // Other
  const factory SignInEvent.checkAuthorized() = CheckAuthorized;
  const factory SignInEvent.reset() = Reset;

  const factory SignInEvent.deleteAccount() = DeleteAccount;
}
