import 'package:doctor_appointment/application/auth/auth_bloc.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';
import 'package:doctor_appointment/presentation/doctor/doctor_home.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signin/components/background.dart';
import 'package:doctor_appointment/presentation/bottom_nav_bar.dart';
import 'package:doctor_appointment/presentation/constants.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signin/login_screen.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
         state.map(
            initial: (_){},
            authenticated: (authData){
              switch(authData.profile.type){
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
            unauthenticated: (_)=>_UnAuthenticatedPage());
      },
      child: _UnAuthenticatedPage(),
    );
  }
}

class _UnAuthenticatedPage extends StatelessWidget {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.30,
            ),
            SizedBox(height: size.height * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Email',
                  style: kLabelStyle,
                ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextField(
                    onChanged: (value){
                      email = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Email',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Password',
                  style: kLabelStyle,
                ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextField(
                    onChanged: (value){
                      password = value;
                    },
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[800],
                  elevation: 5.0,
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  context.read<AuthBloc>()..add(AuthEvent.loginWithEmailPass(email: email, password: password));
                },
                child: Text('LOGIN'),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[800],
                  elevation: 5.0,
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  HapticFeedback.vibrate();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                        (Route<dynamic> route) => false,
                  );
                },
                child: Text('Register Account?'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

