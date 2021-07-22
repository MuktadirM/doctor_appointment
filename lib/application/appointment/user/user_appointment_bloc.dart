import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_appointment_event.dart';
part 'user_appointment_state.dart';
part 'user_appointment_bloc.freezed.dart';

@injectable
class UserAppointmentBloc
    extends Bloc<UserAppointmentEvent, UserAppointmentState> {
  final IAppointmentServices _services;

  UserAppointmentBloc(this._services) : super(const _Initial());

  late StreamSubscription<Either<ValueFailure, List<Appointment>>>
      _userAppointmentStreamSubscription;

  @override
  Stream<UserAppointmentState> mapEventToState(
    UserAppointmentEvent event,
  ) async* {
    yield* event.map(
      watchAllUserAppointmentStarted: (e) async* {
        _userAppointmentStreamSubscription = _services.watchUserAll().listen(
            (successOrFailure) => add(
                UserAppointmentEvent.userAppointmentItemReceived(
                    successOrFailure)));
      },
      userAppointmentItemReceived: (_UserAppointmentItemReceived value) async* {
        final data = value.failureOrItems;
        yield data.fold((l) => _LoadFailure(l), (r) => _LoadSuccess(r));
      },
    );
  }

  @override
  Future<void> close() async {
    await _userAppointmentStreamSubscription.cancel();
    return super.close();
  }
}
