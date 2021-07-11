import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';

abstract class IBlogServices {
  Future<Either<ValueFailure,Unit>> add(Blog entity);
  Stream<Either<ValueFailure,List<Blog>>> watchAll(String? filter);
  Future<Either<ValueFailure,Blog>> getOne(String? key);
  Future<Either<ValueFailure,Unit>> update(String key,Blog newEntity);
  Future<Either<ValueFailure,Unit>> delete(String key);
}
