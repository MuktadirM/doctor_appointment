import 'dart:convert';

import 'package:doctor_appointment/domain/models/core/domain_object.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';

class Profile extends DomainObject {
  final String? name;
  final String? email;
  final UserType type;
  final String? phone;
  late String? image;

  Profile({
    required this.type,
    this.image,
    this.name,
    this.email,
    this.phone,
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) : super(
          key: key,
          createdAt: createdAt,
          createdBy: createdBy,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );

  Profile copyWith({
    String? name,
    String? email,
    UserType? type,
    String ? image,
    String? phone,
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return Profile(
      name: name ?? this.name,
      email: email ?? this.email,
      type: type ?? this.type,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      key: key ?? this.key,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'type': enumTypeToString(type),
      'image' : image,
      'phone': phone,
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      name: map['name'],
      email: map['email'],
      type: enumTypeFromString(map['type']),
      phone: map['phone'],
      image: map['image'],
      key: map['key'],
      createdAt: map['createdAt'].toDate(),
      createdBy: map['createdBy'].toString(),
      updatedAt: map['updatedAt'].toDate(),
      deletedAt:
          map['deletedAt'] == null ? null : DateTime.parse(map['deletedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Profile(name: $name, email: $email, type: $type, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Profile &&
        other.name == name &&
        other.email == email &&
        other.type == type &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ type.hashCode ^ phone.hashCode;
  }

  static UserType enumTypeFromString(String typeString) =>
      UserType.values.firstWhere(
          (type) => type.toString() == "UserType.${typeString.toLowerCase()}");

  static String enumTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}
