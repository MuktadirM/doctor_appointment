import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/services/i_auth_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthServices _authServices;

  AuthBloc(this._authServices) : super(const Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
        authCheckRequested: (e) async*{
          final auth = await _authServices.getSignInUser();
          yield auth.fold(
                  (_) =>const Unauthenticated(),
                  (profile) => Authenticated(profile));
        },
        signedOut: (e) async*{
          await _authServices.logout();
          yield const Unauthenticated();
        });
  }
}
