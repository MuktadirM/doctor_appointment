part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState{
  const factory SignUpFormState.initial() = _Initial;
  const factory SignUpFormState.authenticated(Profile profile) = _Authenticated;
  const factory SignUpFormState.invalidRegistration(RegistrationFailure failure) = _InvalidRegistration;
}
