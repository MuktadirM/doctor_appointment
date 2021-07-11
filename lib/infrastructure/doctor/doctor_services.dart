import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/services/i_doctor_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDoctorServices)
class DoctorServices implements IDoctorServices{
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  DoctorServices(this._auth, this._firestore);

  @override
  Future<Either<ValueFailure, Unit>> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Stream<Either<ValueFailure, Doctor>> getOne(String? key) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Unit>> update(String key, Doctor newEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ValueFailure, List<Doctor>>> watchAll(String? filter) {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

}