part of 'user_appointment_bloc.dart';

@freezed
class UserAppointmentEvent with _$UserAppointmentEvent{
  const factory UserAppointmentEvent.watchAllUserAppointmentStarted(String? filter) = _watchAllUserAppointmentStarted;
  const factory UserAppointmentEvent.userAppointmentItemReceived(
      Either<ValueFailure, List<Appointment>> failureOrItems) = _UserAppointmentItemReceived;
}
