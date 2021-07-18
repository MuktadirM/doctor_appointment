part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent{
  const factory SignUpFormEvent.registerUser(Register register) = _RegisterUser;
}
