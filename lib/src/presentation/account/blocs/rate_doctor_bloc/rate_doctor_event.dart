part of 'rate_doctor_bloc.dart';

@freezed
class RateDoctorEvent with _$RateDoctorEvent {
  const factory RateDoctorEvent.changeField(
    RateDoctorField field,
    dynamic value,
  ) = ChangeField;

  const factory RateDoctorEvent.send() = Send;
}
