part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState{
  const factory DoctorState.initial() = _Initial;
  const factory DoctorState.loadInProgress() = _LoadInProgress;
  const factory DoctorState.loadSuccess(List<Doctor> items) = _LoadSuccess;
  const factory DoctorState.loadFailure(ValueFailure failure) =
  _LoadFailure;
}
