part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getMentors() = GetMentors;

  const factory DoctorEvent.getDoctors() = GetDoctors;

  const factory DoctorEvent.getPatients() = GetPatients;
}
