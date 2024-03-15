enum SignInField { email, password }

enum SignUpField {
  email,
  code,
  password,
  passwordConfirm,
  role,
  patientId,
}

typedef SUFV = SignUpFieldsView;

enum SignUpFieldsView {
  role,
  patientId,
  emailPassword, // First enter email, then code field appears ...
  code,
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
