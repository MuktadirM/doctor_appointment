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
    final key = ref.doc().id;
    final dateTime = DateTime.now();
    final docImage = "https://firebasestorage.googleapis.com/v0/b/doctor-appointment-1f1a1.appspot.com/o/doctors%2Fmale_doc.jpg?alt=media&token=2fcaae1b-a28a-4740-8e50-7146c1d69d70";
    final doctor = Doctor(
      key: "skljgkldfdljgkldf",
      name: 'Ekowan Sanjik',
      image: docImage,
      email: "ekowan@gmail.com",
      docType: DoctorType.family,
      type: UserType.doctor,
      createdAt: dateTime,
      updatedAt: dateTime,
      createdBy: "iddfkdfjkg",
      deletedAt: null,
    );

    final blog = Blog(
      key: key,
      title: entity.title,
      description: entity.description,
      doctor: doctor,
      createdAt: dateTime,
      updatedAt: dateTime,
      createdBy: "iddfkdfjkg",
      deletedAt: null,
    );
    try {
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
