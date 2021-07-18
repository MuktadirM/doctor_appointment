part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent{
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.loginWithEmailPass({required String email, required String password}) = LoginWithEmailPass;
  const factory AuthEvent.signedOut() = SignedOut;
}
