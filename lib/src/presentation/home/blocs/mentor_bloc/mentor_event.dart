part of 'mentor_bloc.dart';

@freezed
class MentorEvent with _$MentorEvent {
  const factory MentorEvent.getDoctors() = GetDoctors;

  const factory MentorEvent.getMentor(int id) = GetMentor;

  const factory MentorEvent.assignDoctor(
    DoctorEntity doctor,
  ) = AssignDoctor;

  const factory MentorEvent.unassignDoctor(
    DoctorEntity doctor,
  ) = UnassignDoctor;

  const factory MentorEvent.assignDoctors() = AssignDoctors;
}
