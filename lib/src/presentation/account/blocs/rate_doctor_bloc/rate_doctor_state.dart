part of 'rate_doctor_bloc.dart';

@freezed
class RateDoctorState with _$RateDoctorState {
  factory RateDoctorState({
    @Default(null) RateDoctorBody? body,
    @Default(LoadStatus.initial) LoadStatus status,
  }) = _RateDoctorState;

  const RateDoctorState._();
}
