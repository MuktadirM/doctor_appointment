part of 'add_appointment_bloc.dart';

@freezed
class AddAppointmentState with _$AddAppointmentState {
  const factory AddAppointmentState.initial() = _Initial;
  const factory AddAppointmentState.addInProgress() = _AddInProgress;
  const factory AddAppointmentState.addSuccess() = _AddSuccess;
  const factory AddAppointmentState.failToAdd(ValueFailure failure) = _FailToAdd;
}
