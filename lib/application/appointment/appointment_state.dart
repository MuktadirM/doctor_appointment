part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState{
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.loadInProgress() = _LoadInProgress;
  const factory AppointmentState.loadSuccess(List<Appointment> items) = _LoadSuccess;
  const factory AppointmentState.loadFailure(ValueFailure failure) =
  _LoadFailure;
}
