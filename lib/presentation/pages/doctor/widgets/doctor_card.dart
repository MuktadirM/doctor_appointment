
import 'package:doctor_appointment/domain/models/users/doctor.dart';
import 'package:flutter/material.dart';

class DoctorCardView extends StatelessWidget {
  final Doctor doctor;
  final Function _function;

  const DoctorCardView(this._function,{required this.doctor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: doctor.image != null ? CircleAvatar(
        backgroundImage: NetworkImage(doctor.image!),
      ):CircleAvatar(
        child: Text("?"),
      ),
      title: Text(doctor.name!,style: TextStyle(
      ),),
      subtitle: Text('Type : '+enumTypeToString(doctor.docType)),
      trailing: ElevatedButton(
        onPressed: () { _function();},
        child: Icon(Icons.add),
      ),
    );
  }
  
  static String enumTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}
