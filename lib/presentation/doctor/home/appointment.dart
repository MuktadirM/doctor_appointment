import 'package:doctor_appointment/application/appointment/appointment_bloc.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/core/load_failure.dart';
import 'package:doctor_appointment/presentation/core/loading_data.dart';
import 'package:doctor_appointment/presentation/doctor/home/widgets/doctor_appointment_card.dart';
import 'package:doctor_appointment/presentation/core/initial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorAppointmentView extends StatelessWidget {
  const DoctorAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<AppointmentBloc>()
        ..add(const AppointmentEvent.watchAllAppointmentStarted(null)),
      child: SafeArea(
        child: BlocBuilder<AppointmentBloc, AppointmentState>(
          builder: (context, state) {
              return state.map(
                  initial: (_) => InitialData(),
                  loadInProgress: (_) => LoadingData(),
                  loadSuccess: (value){
                    final list = value.items;
                    return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, int index) {
                          return DoctorAppointmentCard(
                            appointment: list[index],
                            callback: () {
                            print('Appointment Clicked');
                          },);
                        });
                  },
                  loadFailure: (failure) => LoadFailure(failure: failure.failure));
          },
        ),
      ),
    );
  }
}
