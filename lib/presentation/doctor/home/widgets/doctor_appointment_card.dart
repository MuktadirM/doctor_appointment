
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentCard extends StatelessWidget {
  final Function callback;
  final Appointment? appointment;

  const DoctorAppointmentCard({required this.callback, this.appointment, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        tileColor: Colors.white70,
        leading: CircleAvatar(
          child: Text('B'),
        ),
        title: Text('Ekowan Sanjik'),
        subtitle: Text('12pm'),
        trailing: Text('12-07-2021'),
        onTap: ()=> callback(),
      ),
    );
  }
}
