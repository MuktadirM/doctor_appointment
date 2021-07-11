import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/services/i_appointment_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'appointment_bloc.freezed.dart';

@injectable
class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final IAppointmentServices _services;

  AppointmentBloc(this._services) : super(const _Initial());
  late StreamSubscription<Either<ValueFailure, List<Appointment>>>
  _appointmentStreamSubscription;

  @override
  Stream<AppointmentState> mapEventToState(
    AppointmentEvent event,
  ) async* {
    yield* event.map(
        watchAllAppointmentStarted: (e) async* {
          yield const AppointmentState.loadInProgress();
          _appointmentStreamSubscription = _services.watchAll().listen(
                  (successOrFailure) => add(AppointmentEvent.appointmentItemReceived(successOrFailure)));
        },

        addAppointment: (_AddAppointment value) async* {
          final data = _services.addAppointment(value.appointment);
          data.then((value) => {
            value.fold((l) => (l)=>{ AppointmentState.failToAdd(l) }, (r) => null)
          });
        },
        appointmentItemReceived: (_AppointmentItemReceived value) async* {
          final data = value.failureOrItems;
          yield data.fold((l) => _LoadFailure(l), (r) => _LoadSuccess(r));
        },
    );

  }

  @override
  Future<void> close() async {
    await _appointmentStreamSubscription.cancel();
    return super.close();
  }
}
