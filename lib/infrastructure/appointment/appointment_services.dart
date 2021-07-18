import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/models/users/user.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:doctor_appointment/infrastructure/unitls/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IAppointmentServices)
class AppointmentServices implements IAppointmentServices{
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AppointmentServices(this._auth, this._firestore);

  @override
  Future<Either<ValueFailure, Unit>> addAppointment(Appointment entity) async {
    var ref = _firestore.collection(APPOINTMENT_PATH);
    var refUser = _firestore.collection(USER_PATH);

    var timeStamp = DateTime.now();
    final user = await refUser.doc(_auth.currentUser!.uid).get();
    entity.user = UserApp.fromMap(user.data()!);
    final firstAppointment = DateTime(2021,timeStamp.month,timeStamp.day,0);
    entity.createdAt = timeStamp;
    entity.createdBy = _auth.currentUser!.uid;
    entity.updatedAt = timeStamp;

    try {
      final today = timeStamp.day.toString()+'-'+timeStamp.month.toString()+'-'+timeStamp.year.toString();
      final previous = await ref.doc(entity.doctor!.key).get();
      if(previous.exists){
        final data = previous.data()![today];
        if(data != null){
          List<dynamic> appointments = data;
          final time = getTime(appointments.length);
          final timeSt = firstAppointment.add( Duration(hours: time.hour,minutes: time.min));

          entity.dateTime = timeSt.toLocal();
          print(entity.dateTime);

          appointments.add(entity.toMap());
          ref.doc(entity.doctor!.key).set({
            today : appointments
          },SetOptions(merge: true));
          return right(unit);

        } else {
          final first = getTime(0);
          final time = firstAppointment.add( Duration(hours: first.hour,minutes: first.min));
          entity.dateTime = time;
          Map<String,List<Appointment>> mapData = HashMap();
          mapData[today] = [entity];
          ref.doc(entity.doctor!.key).set(mapData,SetOptions(merge: true));
          return right(unit);
        }
      } else {
        final first = getTime(0);
        final time = firstAppointment.add( Duration(hours: first.hour,minutes: first.min));
        entity.dateTime = time.toLocal();
        Map<String,List<Map<String,dynamic>>> mapData = HashMap();
        mapData[today] = [entity.toMap()];
        ref.doc(entity.doctor!.key).set(mapData,SetOptions(merge: true));
        return right(unit);
      }
    } on PlatformException catch (e){
      return left(ValueFailure.unexpected());
    }
    return left(ValueFailure.unexpected());
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
    var ref = _firestore.collection(APPOINTMENT_PATH);
    throw UnimplementedError();
  }

  @override
  Stream<Either<ValueFailure, List<Appointment>>> watchUserAll() async* {
    var ref = await _firestore.collection(APPOINTMENT_PATH).get();
    final userId = _auth.currentUser!.uid;
    try{
      final data = ref.docs;
      List<Appointment> listApp = [];
      for(var value in data){
        Map<String,dynamic> single = value.data();
        single.forEach((key, value) {
          for(var ap in value){
            if(ap['createdBy'] == userId){
              listApp.add(Appointment.fromMap(ap));
            }
          }
        });
      }
      yield right(listApp);

    } on PlatformException catch (e){
      yield left(const ValueFailure.unexpected());
    }

  }

  AppointmentHour getTime(int size){
      switch(size){
        case 0:
          return const AppointmentHour(hour: 9,min: 0);
        case 1:
          return const AppointmentHour(hour: 9,min: 30);
        case 2:
          return const AppointmentHour(hour: 10,min: 0);
        case 3:
          return const AppointmentHour(hour: 10,min: 30);
        case 4:
          return const AppointmentHour(hour: 11,min: 0);
        case 5:
          return const AppointmentHour(hour: 11,min: 30);
        case 6:
          return AppointmentHour(hour: 12,min: 0);
        case 7:
          return const AppointmentHour(hour: 12,min: 30);
        case 8:
          return const AppointmentHour(hour: 14,min: 0);
        case 9:
          return const AppointmentHour(hour: 14,min: 30);
        case 10:
          return const AppointmentHour(hour: 15,min: 0);
        case 11:
          return const AppointmentHour(hour: 15,min: 30);
        case 12:
          return const AppointmentHour(hour: 16,min: 0);
        case 13:
          return const AppointmentHour(hour: 16,min: 30);

          default:
            return const AppointmentHour(hour: 9,min: 0);
      }
  }

}

class AppointmentHour{
  final int hour;
  final int min;
  const AppointmentHour({required this.hour,required this.min});
}