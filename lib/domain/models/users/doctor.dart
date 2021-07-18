import 'dart:convert';

import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/utils/doctor_type.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';

class Doctor extends Profile {
  final DoctorType docType;
  Doctor({
    required this.docType,
    required type,
    String? name,
    String? email,
    String? phone,
    String? key,
    String? image,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) : super(
          type: type,
          name: name,
          image: image,
          email: email,
          phone: phone,
          key: key,
          createdAt: createdAt,
          createdBy: createdBy,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );

  Doctor copyWith({
    DoctorType? docType,
    UserType? type,
    String? name,
    String? email,
    String? phone,
    String? key,
    String? image,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return Doctor(
        docType: docType ?? this.docType,
        type: type ?? this.type,
        name: name ?? this.name,
        image: image ?? this.image,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        key: key ?? this.key,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt);
  }

  Map<String, dynamic> toMap() {
    return {
      'docType': enumDocTypeToString(docType),
      'type': enumTypeToString(type),
      'name': name,
      'image': image,
      'phone': phone,
      'email': email,
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      docType: enumDocTypeFromString(map['docType']),
      type: enumTypeFromString(map['type']),
      name: map['name'] == null? null:map['name'],
      image: map['image'] == null? null:map['image'],
      email: map['email'] == null? null:map['email'],
      phone: map['phone'] == null? null:map['phone'],
      key: map['key'],
      createdAt: map['createdAt'].toDate(),
      createdBy: map['createdBy'].toString(),
      updatedAt: map['updatedAt'].toDate(),
      deletedAt:
          map['deletedAt'] == null ? null : DateTime.parse(map['deletedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source));

  @override
  String toString() => 'Doctor(docType: $docType)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Doctor && other.docType == docType;
  }

  @override
  int get hashCode => docType.hashCode;

  static UserType enumTypeFromString(String typeString) =>
      UserType.values.firstWhere(
          (type) => type.toString() == "UserType.${typeString.toLowerCase()}");

  static String enumTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();

  static DoctorType enumDocTypeFromString(String typeString) =>
      DoctorType.values.firstWhere((type) =>
          type.toString() == "DoctorType.${typeString.toLowerCase()}");

  static String enumDocTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}
