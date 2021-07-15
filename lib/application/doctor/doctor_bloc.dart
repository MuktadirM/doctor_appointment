import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/services/i_doctor_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

@injectable
class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final IDoctorServices _services;

  DoctorBloc(this._services) : super(const _Initial());

  late StreamSubscription<Either<ValueFailure, List<Doctor>>>
  _doctorStreamSubscription;

  @override
  Stream<DoctorState> mapEventToState(
    DoctorEvent event,
  ) async* {
      yield* event.map(
          watchAllDoctorStarted: (e) async* {
            yield const _LoadInProgress();
            _doctorStreamSubscription = _services.watchAll(e.filter).listen(
                    (successOrFail) => add(_DoctorItemReceived(successOrFail)));
          },
          doctorItemReceived: (e) async* {
            final data = e.failureOrItems;
            yield data.fold(
                    (l) => _LoadFailure(l),
                    (r) => _LoadSuccess(r));
          }
      );
  }

  @override
  Future<void> close() async {
    await _doctorStreamSubscription.cancel();
    return super.close();
  }
}
