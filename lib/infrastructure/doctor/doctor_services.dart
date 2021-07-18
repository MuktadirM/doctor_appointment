import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/services/i_doctor_services.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:doctor_appointment/infrastructure/unitls/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
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
  Stream<Either<ValueFailure, List<Doctor>>> watchAll(String? filter) async* {
    var ref = await _firestore.collection(USER_PATH).get();
    try{
      final userDocs = ref.docs;
      List<Doctor> listDocs = [];
      for(var data in userDocs){
        final user = Profile.fromMap(data.data());
        if(user.type == UserType.doctor){
          final doctor = Doctor.fromMap(data.data());
          if(filter != null){
            if(enumDocTypeToString(doctor.docType) == filter.toUpperCase()){
              listDocs.add(doctor);
            }
          } else {
            listDocs.add(doctor);
          }
        }
      }
      yield right(listDocs);
    } on PlatformException catch (e){
      yield left(const ValueFailure.unexpected());
    }
  }

  static UserType enumTypeFromString(String typeString) =>
      UserType.values.firstWhere(
              (type) => type.toString() == "UserType.${typeString.toLowerCase()}");

  static String enumDocTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}