import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/services/i_blog_services.dart';
import 'package:doctor_appointment/domain/utils/doctor_type.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:doctor_appointment/infrastructure/unitls/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBlogServices)
class BlogServices implements IBlogServices {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  BlogServices(this._auth, this._firestore);

  @override
  Future<Either<ValueFailure, Unit>> add(Blog entity) async {
    final ref = _firestore.collection(BLOG);
    var refUser = _firestore.collection(USER_PATH);

    final key = ref.doc().id;
    final dateTime = DateTime.now();
    try {
      final userId = _auth.currentUser!.uid;
      final user = await refUser.doc(userId).get();
      final doctor = Doctor.fromMap(user.data()!);
      final blog = Blog(
        key: key,
        title: entity.title,
        description: entity.description,
        doctor: doctor,
        createdAt: dateTime,
        updatedAt: dateTime,
        createdBy: userId,
        deletedAt: null,
      );

      await ref.doc(key).set(blog.toMap());
      return right(unit);
    } on PlatformException catch (ex) {
      return left(ValueFailure.unexpected());
    }
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
  Stream<Either<ValueFailure, List<Blog>>> watchAll(String? filter) async* {
    var ref = await _firestore.collection(BLOG).orderBy('createdAt',descending: false).get();

    try {
      final List<Blog> posts = [] ;
      for(final post in ref.docs){
          posts.add(Blog.fromMap(post.data()));
      }
      yield right(posts);
    } catch (err){
      yield left(ValueFailure.insufficientPermission());
    }

  }

}
