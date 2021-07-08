import 'package:doctor_appointment/presentation/appointment/widgets/appointmentCard.dart';
import 'package:doctor_appointment/presentation/utils/appointmentCardList.dart';
import 'package:doctor_appointment/presentation/widgets/dateRangePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          Text(
            'Schedule',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          Divider(),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: DateRangePickerWidget(),
          ),
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
                  print('View All clicked');
                },
                child: const Text('view all'),
              ),
            ],
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: appointmentList.length,
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: AppointmentCard(
                  imageUrl: appointmentList[i].imageUrl,
                  docName: appointmentList[i].docName,
                  docTitle: appointmentList[i].docTitle,
                  visitingTime: appointmentList[i].visitingTime,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
