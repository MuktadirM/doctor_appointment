import 'package:doctor_appointment/application/auth/auth_bloc.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/presentation/bottom_nav_bar.dart';
import 'package:doctor_appointment/presentation/doctor/doctor_home.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signin/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            _PageWidget();
          },
          authenticated: (data){
            switch(data.profile.type){
              case UserType.doctor:
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=> DoctorHome()),
                );
                break;
              case UserType.admin:
                // TODO: Handle this case.
                break;
              case UserType.user:
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=> BottomNavBar()),
                );
                break;
              default:
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=> LoginScreen()),
                );
                break;
              }
          },

          unauthenticated: (_) => Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context)=> LoginScreen()),
          ),

        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}