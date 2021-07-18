part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent{
  const factory AppointmentEvent.watchAllAppointmentStarted(String? filter) = _watchAllAppointmentStarted;
  const factory AppointmentEvent.watchAllUserAppointmentStarted(String? filter) = _watchAllUserAppointmentStarted;
  const factory AppointmentEvent.appointmentItemReceived(
      Either<ValueFailure, List<Appointment>> failureOrItems) = _AppointmentItemReceived;

  const factory AppointmentEvent.userAppointmentItemReceived(
      Either<ValueFailure, List<Appointment>> failureOrItems) = _UserAppointmentItemReceived;
}
