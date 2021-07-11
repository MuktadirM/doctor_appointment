part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent{
  const factory AppointmentEvent.watchAllAppointmentStarted(String? filter) = _watchAllAppointmentStarted;
  const factory AppointmentEvent.addAppointment(Appointment appointment) = _AddAppointment;
  const factory AppointmentEvent.appointmentItemReceived(
      Either<ValueFailure, List<Appointment>> failureOrItems) = _AppointmentItemReceived;
}
