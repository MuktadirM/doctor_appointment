import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';

abstract class IDoctorServices {
  Stream<Either<ValueFailure,List<Doctor>>> watchAll(String? filter);
  Stream<Either<ValueFailure,Doctor>> getOne(String? key);
  Future<Either<ValueFailure,Unit>> update(String key,Doctor newEntity);
  Future<Either<ValueFailure,Unit>> delete(String key);
}
