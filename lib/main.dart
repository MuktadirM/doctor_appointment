import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureInjection(Environment.prod);
    //forcing app to maintain website theme
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blueAccent, // navigation bar color
      statusBarColor: Colors.blue // status bar color
      ));
  await Firebase.initializeApp();
    runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Appointment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppWidget(),
    );
  }
}
