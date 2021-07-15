import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'add_appointment_event.dart';
part 'add_appointment_state.dart';
part 'add_appointment_bloc.freezed.dart';

@injectable
class AddAppointmentBloc extends Bloc<AddAppointmentEvent, AddAppointmentState> {
  final IAppointmentServices _services;

  AddAppointmentBloc(this._services) : super(const _Initial());

  @override
  Stream<AddAppointmentState> mapEventToState(
    AddAppointmentEvent event,
  ) async* {
    yield* event.map(
      addAppointment: (value) async* {
        const AddAppointmentState.addInProgress();
        final data = await _services.addAppointment(value.appointment);
        yield data.fold(
                (l) => AddAppointmentState.failToAdd(l),
                (_) => AddAppointmentState.addSuccess());
      });
  }
}
