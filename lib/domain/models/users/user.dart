import 'dart:convert';
import 'package:doctor_appointment/domain/models/core/domain_object.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';

class User extends DomainObject {
  final String? name;
  final String? email;
  final UserType type;
  final String? image;
  final String? phone;
  User({
    required this.type,
    this.name,
    this.email,
    this.image,
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

  User copyWith({
    String? name,
    String? image,
    String? email,
    UserType? type,
    String? phone,
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return User(
        name: name ?? this.name,
        image: image ?? this.image,
        email: email ?? this.email,
        type: type ?? this.type,
        phone: phone ?? this.phone,
        key: key ?? this.key,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt);
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image':image,
      'email': email,
      'type': enumTypeToString(type),
      'phone': phone,
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      image: map['image'],
      email: map['email'],
      type: enumTypeFromString(map['type']),
      phone: map['phone'],
      key: map['key'] as String,
      createdAt: DateTime.parse(map['createdAt']),
      createdBy: map['createdBy'].toString(),
      updatedAt: DateTime.parse(map['updatedAt']),
      deletedAt:
          map['deletedAt'] == null ? null : DateTime.parse(map['deletedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, email: $email, type: $type, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
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
