import 'package:doctor_appointment/presentation/doctor/home/widgets/doctor_appointment_card.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentView extends StatelessWidget {
  const DoctorAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,int index){
            return DoctorAppointmentCard(callback: (){
              print('Appointment Clicked');
            },);
        }),
    );
  }
}
