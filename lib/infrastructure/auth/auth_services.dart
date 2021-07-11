import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/services/i_auth_services.dart';
import 'package:doctor_appointment/domain/utils/failures.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    //* To load different user change user type
    final profile = Profile(
        name: 'salam', email: 'parent@gmail.com', type: UserType.doctor);
    if (profile != null) {
      return right(profile);
    }
    return left(unit);
  }

  @override
  Future<Either<AuthFailureException, Profile>> loginWithEmailPass(
      String email, String password) {
    // TODO: implement loginWithEmailPass
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
