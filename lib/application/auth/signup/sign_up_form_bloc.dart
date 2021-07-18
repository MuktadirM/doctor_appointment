import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/models/core/register.dart';
import 'package:doctor_appointment/domain/services/i_auth_services.dart';
import 'package:doctor_appointment/domain/utils/register_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthServices _services;
  SignUpFormBloc(this._services) : super(const _Initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
        registerUser: (e) async* {
      final reg = await _services.registerWithEmailPassword(e.register);
      yield reg.fold((fail) => SignUpFormState.invalidRegistration(fail), (suc) => SignUpFormState.authenticated(suc));
    });
  }
}
