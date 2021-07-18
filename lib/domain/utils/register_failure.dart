import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_failure.freezed.dart';

@freezed
class RegistrationFailure with _$RegistrationFailure{
  const factory RegistrationFailure.invalidData(String message) = _InvalidData;
  const factory RegistrationFailure.passwordNotMatch() = _PasswordNotMatch;
  const factory RegistrationFailure.serverError() = _ServerError;
  const factory RegistrationFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory RegistrationFailure.unexpected() = _Unexpected;
}