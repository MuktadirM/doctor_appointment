import 'dart:convert';

class DomainObject {
  final String? key;
  final DateTime? createdAt;
  final String? createdBy;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  DomainObject({
    this.key,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.deletedAt,
  });

  DomainObject copyWith({
    String? key,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return DomainObject(
      key: key ?? this.key,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory DomainObject.fromMap(Map<String, dynamic> map) {
    return DomainObject(
      key: map['key'].toString(),
      createdAt: DateTime.parse(map['createdAt']),
      createdBy: map['createdBy'].toString(),
      updatedAt: DateTime.parse(map['updatedAt']),
      deletedAt:
          map['deletedAt'] == null ? null : DateTime.parse(map['deletedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DomainObject.fromJson(String source) =>
      DomainObject.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DomainObject(key: $key, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DomainObject &&
        other.key == key &&
        other.createdAt == createdAt &&
        other.createdBy == createdBy &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        createdAt.hashCode ^
        createdBy.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode;
  }
}
