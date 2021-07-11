import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/utils/failures.dart';

abstract class IAuthServices {
  Future<Either<Unit, Profile>> getSignInUser();
  Future<Either<AuthFailureException, Profile>> loginWithEmailPass(
      String email, String password);
  Future<Either<AuthFailureException, Profile>> getLoginUser(String? key);
  Future<void> logout();
}
