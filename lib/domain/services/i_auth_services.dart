import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/models/core/register.dart';
import 'package:doctor_appointment/domain/utils/failures.dart';
import 'package:doctor_appointment/domain/utils/register_failure.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';



abstract class IAuthServices {
  Future<Either<Unit, Profile>> getSignInUser();
  Future<Either<RegistrationFailure,Profile>> doctorRegistration(Register register);
  Future<Either<RegistrationFailure,Profile>> registerWithEmailPassword(Register register);
  Future<Either<AuthFailureException, Profile>> loginWithEmailPass(
      String email, String password);
  Future<Either<AuthFailureException, Profile>> getLoginUser(String? key);
  Future<Either<ValueFailure,Unit>> updateProfile({File? file,required Profile profile});
  Future<void> logout();
}
