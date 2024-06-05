part of 'doctor_access_bloc.dart';

@freezed
class DoctorAccessEvent with _$DoctorAccessEvent {
  const factory DoctorAccessEvent.generateCode() = GenerateCode;
  const factory DoctorAccessEvent.getAccesses() = GetAccesses;
}
