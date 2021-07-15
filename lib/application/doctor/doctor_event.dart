part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent{
  const factory DoctorEvent.watchAllDoctorStarted(String? filter) = _watchAllDoctorStarted;
  const factory DoctorEvent.doctorItemReceived(
      Either<ValueFailure, List<Doctor>> failureOrItems) = _DoctorItemReceived;
}
