
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/domain/services/i_blog_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBlogServices)
class BlogServices implements IBlogServices{
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  BlogServices(this._auth, this._firestore);

  @override
  Future<Either<ValueFailure, Unit>> add(Blog entity) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Unit>> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Blog>> getOne(String? key) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure, Unit>> update(String key, Blog newEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ValueFailure, List<Blog>>> watchAll(String? filter) {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

}