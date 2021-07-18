import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';

abstract class IAppointmentServices{
  Stream<Either<ValueFailure,List<Appointment>>> watchAll();
  Stream<Either<ValueFailure,List<Appointment>>> watchUserAll();
  Future<Either<ValueFailure,Unit>> addAppointment(Appointment entity);
  Future<Either<ValueFailure,Unit>> update(String key,Appointment newEntity);
  Future<Either<ValueFailure,Unit>> delete(String key);
}