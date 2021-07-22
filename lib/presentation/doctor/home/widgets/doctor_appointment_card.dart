
import 'package:doctor_appointment/domain/models/appointment.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentCard extends StatelessWidget {
  final Function callback;
  final Appointment appointment;

  const DoctorAppointmentCard({required this.callback,required this.appointment, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        tileColor: Colors.white70,
        leading: CircleAvatar(
          child: ClipOval(
            child: Image.network(appointment.user!.image!,height: 100, width: 100,fit: BoxFit.cover,),
          ),
        ),
        title: Text(appointment.user!.name!),
        subtitle: Text(morningOrEventing(appointment.dateTime.hour)),
        trailing: Text(dateCal(appointment.createdAt!)),
        onTap: ()=> callback(),
      ),
    );
  }
  morningOrEventing(int hour) => hour < 12?'At morning $hour':'After at $hour lunch';
  dateCal(DateTime timeStamp) => timeStamp.day.toString()+'-'+timeStamp.month.toString()+'-'+timeStamp.year.toString();
}
