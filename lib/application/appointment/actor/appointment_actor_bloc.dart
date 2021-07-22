import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'appointment_actor_event.dart';
part 'appointment_actor_state.dart';
part 'appointment_actor_bloc.freezed.dart';

@injectable
class AppointmentActorBloc extends Bloc<AppointmentActorEvent, AppointmentActorState> {
  final IAppointmentServices _appointmentServices;
  AppointmentActorBloc(this._appointmentServices) : super(const _Initial());

  @override
  Stream<AppointmentActorState> mapEventToState(
    AppointmentActorEvent event,
  ) async* {
        yield* event.map(cancelAppointment: (e) async* {
          yield const _ActionInProgress();
          
        });
  }
}
