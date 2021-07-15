import 'package:doctor_appointment/presentation/doctor/blog/doctor_blog.dart';
import 'package:doctor_appointment/presentation/doctor/home/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  int _selectedIndex = 0;
  String title = "Appointments";

  static List<Widget> _widgetOptions = <Widget>[
    DoctorAppointmentView(),
    DoctorBlogView(),
  ];

  void _onItemTapped(int index) {
    HapticFeedback.vibrate();
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 1){
        title = "Blog";
      }else{
        title = "Appointments";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: IndexedStack(
          children: _widgetOptions,
          index: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade100,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Blog',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          elevation: 5,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
