import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/domain/services/i_auth_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final IAuthServices _services;
  EditProfileBloc(this._services) : super(const _Initial());

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    yield* event.map(updateProfile: (e) async* {
      yield const _ActionInProgress();
      final result = await _services.updateProfile(file: e.file,profile: e.profile);
      yield result.fold((failure) =>  _ActionFailed(failure) , (_) => _ActionSuccess());
    });
  }
}
