part of 'patient_bloc.dart';

@freezed
class PatientEvent with _$PatientEvent {
  const factory PatientEvent.getPatient(int id) = GetPatient;

  const factory PatientEvent.getCases(
    int? patientId,
  ) = GetCases;

  const factory PatientEvent.postCase(PatientCaseBody body) = PostCase;

  const factory PatientEvent.updateAlignerSettings() = UpdateAlignerSettings;

  const factory PatientEvent.changeSettings(
    AlignerSettingsField field,
    String value,
  ) = ChangeSettings;

  const factory PatientEvent.applyRefCode(String code) = ApplyRefCode;

  const factory PatientEvent.getPatientMe() = GetPatientMe;

  const factory PatientEvent.changeField({
    required PProfileField field,
    required dynamic value,
  }) = ChangeField;

  const factory PatientEvent.saveFields() = SaveFields;
}
