import 'package:doctor_appointment/application/appointment/user/user_appointment_bloc.dart';
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/appointment/widgets/appointmentCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    late List<Appointment> appointments = [];
    return BlocProvider(
      create: (context) => getIt<UserAppointmentBloc>()
        ..add(UserAppointmentEvent.watchAllUserAppointmentStarted(null)),
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Appointment',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   'Schedule',
            //   style: TextStyle(
            //     color: Colors.grey[700],
            //     fontSize: 25,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            Divider(),
            const SizedBox(
              height: 5,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: DateRangePickerWidget(),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Appointment",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    HapticFeedback.vibrate();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ViewAllDoctorAppointment(appointments)));
                  },
                  child: const Text('view all'),
                ),
              ],
            ),
            BlocBuilder<UserAppointmentBloc, UserAppointmentState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => _InitialPage(),
                  loadInProgress: (_) => _InitialPage(),
                  loadSuccess: (data) {
                    appointments = data.items;
                    final today = appointments
                        .where((element) =>
                            element.dateTime.day == DateTime.now().day)
                        .toList();
                    return _ListOfAppointments(today);
                  },
                  loadFailure: (fail) => _loadFailed(fail.failure),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ListOfAppointments extends StatelessWidget {
  final List<Appointment> list;
  const _ListOfAppointments(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: AppointmentCard(
            imageUrl: list[i].doctor!.image!,
            docName: list[i].doctor!.name!,
            docTitle: enumDocTypeToString(list[i].doctor!.docType),
            visitingTime: _visitingTime(list[i].dateTime),
            datetime: list[i].dateTime,
          ),
        );
      },
    );
  }

  static String enumDocTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}

class ViewAllDoctorAppointment extends StatelessWidget {
  final List<Appointment> list;
  const ViewAllDoctorAppointment(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'All Appointment',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: AppointmentCard(
                    imageUrl: list[i].doctor!.image!,
                    docName: list[i].doctor!.name!,
                    docTitle: enumDocTypeToString(list[i].doctor!.docType),
                    visitingTime: _visitingTime(list[i].dateTime),
                    datetime: list[i].dateTime,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  static String enumDocTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}

_visitingTime(DateTime dateTime) {
  return dateTime.day.toString() +
      '-' +
      dateTime.month.toString() +
      '-' +
      dateTime.year.toString() +
      '  ' +
      'Time : ' +
      dateTime.hour.toString() +
      ":" +
      dateTime.minute.toString() +
      "  Duration : 30m";
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
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

_loadFailed(ValueFailure failure) {
  return failure.map(
      unexpected: (_) => _FailureData(),
      insufficientPermission: (_) => _FailureData(),
      attachmentNotFound: (_) => _FailureData(),
      invalidFileFormat: (_) => _FailureData(),
      unableToUpdate: (_) => _FailureData());
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
