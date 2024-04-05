part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  factory DoctorState({
    @Default([]) List<MentorEntity> mentors,
    @Default(LoadStatus.initial) LoadStatus mentorsStatus,
    @Default([]) List<DoctorEntity> doctors,
    @Default(LoadStatus.initial) LoadStatus doctorsStatus,
    @Default([]) List<PatientEntity> patients,
    @Default(LoadStatus.initial) LoadStatus patientsStatus,
  }) = _DoctorState;

  const DoctorState._();
}
