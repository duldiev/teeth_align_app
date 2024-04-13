part of 'patient_bloc.dart';

@freezed
class PatientEvent with _$PatientEvent {
  const factory PatientEvent.getPatient(int id) = GetPatient;

  const factory PatientEvent.getCases(
    int? patientId,
  ) = GetCases;

  const factory PatientEvent.postCase(PatientCaseBody body) = PostCase;
}
