part of 'user_appointment_bloc.dart';

@freezed
class UserAppointmentState with _$UserAppointmentState{
  const factory UserAppointmentState.initial() = _Initial;
  const factory UserAppointmentState.loadInProgress() = _LoadInProgress;
  const factory UserAppointmentState.loadSuccess(List<Appointment> items) = _LoadSuccess;
  const factory UserAppointmentState.loadFailure(ValueFailure failure) =
  _LoadFailure;
}
