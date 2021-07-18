import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/models/core/register.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/services/i_auth_services.dart';
import 'package:doctor_appointment/domain/utils/doctor_type.dart';
import 'package:doctor_appointment/domain/utils/failures.dart';
import 'package:doctor_appointment/domain/utils/register_failure.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/infrastructure/unitls/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthServices)
class AuthServices implements IAuthServices {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthServices(this._auth, this._firestore);

  @override
  Future<Either<AuthFailureException, Profile>> getLoginUser(String? key) {
    // TODO: implement getLoginUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Unit, Profile>> getSignInUser() async {
    var ref = _firestore.collection(USER_PATH);
    try{
      if(_auth.currentUser != null){
        final user = _auth.currentUser;
        final data = await ref.doc(user!.uid).get();
        if(data.data() != null){
          Profile profile = Profile.fromMap(data.data()!);
          return right(profile);
        }
      }
      return left(unit);
    } on PlatformException catch (e) {
      return left(unit);
    }
  }

  @override
  Future<Either<RegistrationFailure, Profile>> registerWithEmailPassword(Register register) async {
    final image = 'https://firebasestorage.googleapis.com/v0/b/doctor-appointment-1f1a1.appspot.com/o/app%2F0c3b3adb1a7530892e55ef36d3be6cb8.png?alt=media&token=53c584d9-994e-4e74-9fb5-cfcb716107e6';
    var ref = _firestore.collection(USER_PATH);
    if(register.email.isEmpty && register.password.isEmpty && register.name.isEmpty && register.phone.isEmpty){
       return left(const RegistrationFailure.invalidData("field can't be empty"));
    }
    if(register.password.isEmpty && register.confirmPass.isEmpty){
      return left(const RegistrationFailure.invalidData("field can't be empty"));
    }
    if(register.password != register.confirmPass){
      return left(const RegistrationFailure.passwordNotMatch());
    }
    if(register.email.isEmpty || register.name.isEmpty || register.phone.isEmpty){
      return left(const RegistrationFailure.invalidData("field can't be empty"));
    }

    try{
        final auth = await _auth.createUserWithEmailAndPassword(email: register.email, password: register.password);
        if(auth.user != null){
         var timestamp = DateTime.now();
          final user = Profile(
            key: auth.user!.uid,
            name: register.name,
            email: register.email,
            phone:register.phone,
            type: UserType.user,
            image: image,
            createdAt: timestamp,
            createdBy: auth.user!.uid,
            updatedAt: timestamp,
          );
          ref.doc(auth.user!.uid).set(user.toMap());
          return right(user);
        }
    } on PlatformException catch (e){
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const RegistrationFailure.emailAlreadyInUse());
      } else {
        return left(const RegistrationFailure.unexpected());
      }
    }
    return left(const RegistrationFailure.serverError());
  }

  @override
  Future<Either<AuthFailureException, Profile>> loginWithEmailPass(
      String email, String password) async {
    var ref = _firestore.collection(USER_PATH);
    if (email.isEmpty && password.isEmpty) {
      return left(const AuthFailureException.invalidEmailAndPasswordCombination(
          'Invalid password and email'));
    }
    try{
      final auth = await _auth.signInWithEmailAndPassword(email: email, password: password);
      final user = await ref.doc(auth.user!.uid).get();
      Profile profile = Profile.fromMap(user.data()!);
      return right(profile);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailureException.invalidEmailAndPasswordCombination("Invalid password and email"));
      }
    }
    return left(const AuthFailureException.serverError("Server fail"));
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
  }

  @override
  Future<Either<RegistrationFailure, Profile>> doctorRegistration(Register register) async {
    final image = 'https://firebasestorage.googleapis.com/v0/b/doctor-appointment-1f1a1.appspot.com/o/app%2F0c3b3adb1a7530892e55ef36d3be6cb8.png?alt=media&token=53c584d9-994e-4e74-9fb5-cfcb716107e6';
    var ref = _firestore.collection(USER_PATH);
    if(register.email.isEmpty && register.password.isEmpty && register.name.isEmpty && register.phone.isEmpty){
      return left(const RegistrationFailure.invalidData("field can't be empty"));
    }
    if(register.password.isEmpty && register.confirmPass.isEmpty){
      return left(const RegistrationFailure.invalidData("field can't be empty"));
    }
    if(register.password != register.confirmPass){
      return left(const RegistrationFailure.passwordNotMatch());
    }

    try{
      final auth = await _auth.createUserWithEmailAndPassword(email: register.email, password: register.password);
      if(auth.user != null){
        var timestamp = DateTime.now();
        final user = Doctor(
          key: auth.user!.uid,
          name: register.name,
          email: register.email,
          phone:register.phone,
          type: UserType.doctor,
          docType: DoctorType.cardiac,
          image: image,
          createdAt: timestamp,
          createdBy: auth.user!.uid,
          updatedAt: timestamp,
        );
        ref.doc(auth.user!.uid).set(user.toMap());
        return right(user);
      }
    } on PlatformException catch (e){
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const RegistrationFailure.emailAlreadyInUse());
      } else {
        return left(const RegistrationFailure.unexpected());
      }
    }
    return left(const RegistrationFailure.serverError());
  }

}
