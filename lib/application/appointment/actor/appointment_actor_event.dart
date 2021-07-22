part of 'appointment_actor_bloc.dart';

@freezed
class AppointmentActorEvent with _$AppointmentActorEvent{
  const factory AppointmentActorEvent.cancelAppointment(Appointment appointment) = _CancelAppointment;
}
