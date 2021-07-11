import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppointmentServices)
class AppointmentServices implements IAppointmentServices{
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AppointmentServices(this._auth, this._firestore);

  @override
  Future<Either<ValueFailure, Unit>> addAppointment(Appointment entity) {
    // TODO: implement addAppointment
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Unit>> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Unit>> update(String key, Appointment newEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ValueFailure, List<Appointment>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

}