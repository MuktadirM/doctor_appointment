import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:doctor_appointment/domain/utils/doctor_type.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/presentation/pages/doctor/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class AllDoctorView extends StatelessWidget {
  final String? filter;

  const AllDoctorView({this.filter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.now();
    final docImage = "https://firebasestorage.googleapis.com/v0/b/doctor-appointment-1f1a1.appspot.com/o/doctors%2Fmale_doc.jpg?alt=media&token=2fcaae1b-a28a-4740-8e50-7146c1d69d70";
    final doctor = Doctor(
      key: "skljgkldfdljgkldf",
      name: 'Ekowan Sanjik',
      image: docImage,
      email: "ekowan@gmail.com",
      docType: DoctorType.family,
      type: UserType.doctor,
      createdAt: dateTime,
      updatedAt: dateTime,
      createdBy: "iddfkdfjkg",
      deletedAt: null,
    );

    return Scaffold(
      appBar: AppBar(title: filter != null? Text(filter!):Text('Doctors'),),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)
          {
          return DoctorCardView((){
            print("add Click");
          }, doctor: doctor,);
      }),
    );
  }
}
