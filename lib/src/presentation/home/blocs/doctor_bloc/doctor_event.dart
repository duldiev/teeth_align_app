part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getMentors() = GetMentors;

  const factory DoctorEvent.getPatients() = GetPatients;

  const factory DoctorEvent.getDoctor(int id) = GetDoctor;

  const factory DoctorEvent.getDoctorMe() = GetDoctorMe;

  const factory DoctorEvent.changeField({
    required DProfileField field,
    required dynamic value,
  }) = ChangeField;

  const factory DoctorEvent.saveFields() = SaveFields;
}
