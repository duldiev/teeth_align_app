enum SignInField { email, password }

enum SignUpField {
  email,
  code,
  password,
  passwordConfirm,
  role,
}

typedef SUFV = SignUpFieldsView;

enum SignUpFieldsView {
  role,
  emailPassword, // First enter email, then code field appears ...
  code,
  patientId,
  finish,
}

enum ThridPartyAuthType { signIn, signUp }

enum ProfileField {
  username,
  firstName,
  lastName,
  gender,
  height,
  birthDate,
  weight,
  role,
}
