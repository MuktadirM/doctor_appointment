import 'package:doctor_appointment/application/appointment/add/add_appointment_bloc.dart';
import 'package:doctor_appointment/application/doctor/doctor_bloc.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/utils/doctor_type.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/pages/doctor/widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorView extends StatelessWidget {
  final String? filter;

  const AllDoctorView({this.filter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: filter != null ? Text(filter!) : Text('Doctors'),),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) =>
          getIt<DoctorBloc>()
            ..add(DoctorEvent.watchAllDoctorStarted(filter))),
          BlocProvider(create: (context) => getIt<AddAppointmentBloc>()),
        ],
        child: BlocListener<AddAppointmentBloc, AddAppointmentState>(
          listener: (context, state) {
            state.when(
                initial: (){},
                addInProgress: (){
                  final snackBar = SnackBar(content: Text('Please wait...'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                addSuccess: (){
                  final snackBar = SnackBar(content: Text('Appointment added'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                failToAdd: (failure){
                  final snackBar = SnackBar(content: Text('Appointment can not add'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, );
          },
          child: BlocBuilder<DoctorBloc, DoctorState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => _InitialPage(),
                loadInProgress: (_) => _InitialPage(),
                loadSuccess: (data) => _ListOfDoctor(data.items),
                loadFailure: (data) => _loadFailed(data.failure),
              );
            },
          ),
        ),
      ),
    );
  }

  _loadFailed(ValueFailure failure) {
    return failure.map(
        unexpected: (_) => _FailureData(),
        insufficientPermission: (_) => _FailureData(),
        attachmentNotFound: (_) => _FailureData(),
        invalidFileFormat: (_) => _FailureData(),
        unableToUpdate: (_) => _FailureData());
  }
}

class _FailureData extends StatelessWidget {
  const _FailureData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Data Load Fail'),
      ),
    );
  }
}


class _ListOfDoctor extends StatelessWidget {
  final List<Doctor> doctors;

  const _ListOfDoctor(this.doctors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return BlocListener<AddAppointmentBloc, AddAppointmentState>(
            listener: (context, state) {
              state.map(initial: (_) => {},
                  addInProgress: (_) => {},
                  addSuccess: (_) => {},
                  failToAdd: (_) => {});
            },
            child: DoctorCardView(() {
              final appoint = Appointment(
                  dateTime: DateTime.now(), doctor: doctors[index]);
              context.read<AddAppointmentBloc>()
                ..add(AddAppointmentEvent.addAppointment(appoint));
            }, doctor: doctors[index],),
          );
        });
  }
}

class _InitialPage extends StatelessWidget {
  const _InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please wait..',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}



