import 'dart:convert';

import 'package:doctor_appointment/domain/models/core/domain_object.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';

class Blog extends DomainObject {
  final Doctor? doctor;
  final String title;
  final String description;

  Blog({
    this.doctor,
    required this.title,
    required this.description,
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

  Blog copyWith({
    Doctor? doctor,
    String? title,
    String? description,
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return Blog(
      doctor: doctor ?? this.doctor,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctor': doctor!.toMap(),
      'title': title,
      'description': description,
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory Blog.fromMap(Map<String, dynamic> map) {
    return Blog(
      doctor: Doctor.fromMap(map['doctor']),
      title: map['title'],
      description: map['description'],
      key: map['key'] as String,
      createdAt: map['createdAt'].toDate(),
      createdBy: map['createdBy'].toString(),
      updatedAt: map['updatedAt'].toDate(),
      deletedAt:
          map['deletedAt'] == null ? null : DateTime.parse(map['deletedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Blog.fromJson(String source) => Blog.fromMap(json.decode(source));

  @override
  String toString() =>
      'Blog(doctor: $doctor, title: $title, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Blog &&
        other.doctor == doctor &&
        other.title == title &&
        other.description == description;
  }

  @override
  int get hashCode => doctor.hashCode ^ title.hashCode ^ description.hashCode;
}
