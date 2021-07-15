part of 'add_appointment_bloc.dart';

@freezed
class AddAppointmentEvent with _$AddAppointmentEvent{
  const factory AddAppointmentEvent.addAppointment(Appointment appointment) = _AddAppointment;
}
