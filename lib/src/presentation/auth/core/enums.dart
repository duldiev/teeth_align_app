enum SignInField { email, password }

enum SignUpField {
  email,
  code,
  password,
  passwordConfirm,
}

typedef SUFV = SignUpFieldsView;

enum SignUpFieldsView {
  role,
  emailPassword, // First enter email, then code field appears ...
  code,
  barcode,
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
}
