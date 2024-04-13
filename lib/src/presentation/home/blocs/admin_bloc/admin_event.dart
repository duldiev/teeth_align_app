part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.getMentors() = GetMentors;

  const factory AdminEvent.getPatients() = GetPatients;

  const factory AdminEvent.getDoctors() = GetDoctors;

  const factory AdminEvent.getAll() = GetAll;

  const factory AdminEvent.assignDoctorsToMentors(
    int mentorId,
    List<DoctorEntity> doctors,
  ) = AssignDoctorsToMentors;
}
