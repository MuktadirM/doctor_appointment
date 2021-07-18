import 'dart:convert';

import 'package:doctor_appointment/domain/models/core/domain_object.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/models/users/user.dart';

class Appointment extends DomainObject {
  final Doctor? doctor;
  UserApp? user;
  String? key;
  DateTime dateTime;
  DateTime? createdAt;
  String? createdBy;
  DateTime? updatedAt;
  DateTime? deletedAt;

  Appointment({
    this.doctor,
    this.user,
    required this.dateTime,
    this.key,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.deletedAt,
  }) : super(
          key: key,
          createdAt: createdAt,
          createdBy: createdBy,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );
  Appointment copyWith({
    Doctor? doctor,
    UserApp? user,
    DateTime? dateTime,
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return Appointment(
      doctor: doctor ?? this.doctor,
      user: user ?? this.user,
      dateTime: dateTime ?? this.dateTime,
      key: key ?? this.key,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctor': doctor == null ? null : doctor!.toMap(),
      'user': user!.toMap(),
      'dateTime': dateTime.millisecondsSinceEpoch,
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      doctor: Doctor.fromMap(map['doctor']),
      user: UserApp.fromMap(map['user']),
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      key: map['key'],
      createdAt: map['createdAt'].toDate(),
      createdBy: map['createdBy'],
      updatedAt: map['updatedAt'].toDate(),
      deletedAt:
          map['deletedAt'] == null ? null : map['deletedAt'].toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Appointment.fromJson(String source) =>
      Appointment.fromMap(json.decode(source));

  @override
  String toString() =>
      'Appointment(doctor: $doctor, user: $user, dateTime: $dateTime)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointment &&
        other.doctor == doctor &&
        other.user == user &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode => doctor.hashCode ^ user.hashCode ^ dateTime.hashCode;
}
