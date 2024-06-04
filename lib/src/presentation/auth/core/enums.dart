enum SignInField { email, password }

enum SignUpField {
  email,
  code,
  password,
  passwordConfirm,
  role,
  refCode,
  uniqueId,
}

typedef SUFV = SignUpFieldsView;

enum SignUpFieldsView {
  role,
  uniqueId,
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

enum DProfileField {
  firstName,
  lastName,
  clinicName,
  speciality,
  city,
  workExperience,
}

enum MProfileField {
  firstName,
  lastName,
  clinicName,
  speciality,
  city,
  workExperience,
}

enum AProfileField {
  firstName,
  lastName,
  email,
}

enum PProfileField {
  firstName,
  lastName,
  email,
}

enum AlignerSettingsField {
  currentSet,
  maxSet,
  wearDuration,
  reminderTime;
}
