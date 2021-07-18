import 'package:doctor_appointment/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:doctor_appointment/domain/models/core/register.dart';
import 'package:doctor_appointment/domain/utils/register_failure.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signin/login_screen.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signup/components/background.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signup/components/or_divider.dart';
import 'package:doctor_appointment/application/auth/signup/sign_up_form_bloc.dart';
import 'package:doctor_appointment/presentation/bottom_nav_bar.dart';
import 'package:doctor_appointment/presentation/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),
                    (Route<dynamic> route) => false,
              );
            },
            invalidRegistration: (failure){
              Navigator.push(context, MaterialPageRoute(builder: (context) => _RegistrationFail(failure.failure)));
            }
        );
      },
      child: _Initial(),
    );
  }
}

class _RegistrationFail extends StatelessWidget {
  final RegistrationFailure failure;

  _RegistrationFail(this.failure, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error'),),
      body: SafeArea(
        child: failure.map(
          invalidData: (data) => _Failure(message: data.message,),
          passwordNotMatch: (_) => _Failure(message: 'Password Not Match',),
          serverError: (_) => _Failure(message: 'Server Error',),
          emailAlreadyInUse: (_) => _Failure(message: 'Email Already In Use',),
          unexpected: (_) => _Failure(message: 'Unexpected',),
        ),
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  final String message;

  const _Failure({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message, style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600
      ),),
    );
  }
}


class _Authenticated extends StatelessWidget {
  const _Authenticated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Please wait...'),
      ),
    );
  }
}


class _Initial extends StatelessWidget {
  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  String confirmPass = "";

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
            SizedBox(height: size.height * 0.03),
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // const Text(
                //   'Full Name',
                //   style: kLabelStyle,
                // ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextFormField(
                    onChanged: (txt) {
                      name = txt;
                    },
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.perm_contact_cal,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your full name',
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
                // const Text(
                //   'Email',
                //   style: kLabelStyle,
                // ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextFormField(
                    onChanged: (txt) {
                      email = txt;
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
                // const Text(
                //   'Email',
                //   style: kLabelStyle,
                // ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextFormField(
                    onChanged: (txt) {
                      phone = txt;
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
                        Icons.phone,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your phone number',
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
                // const Text(
                //   'Password',
                //   style: kLabelStyle,
                // ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextFormField(
                    onChanged: (txt) {
                      password = txt;
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
            const SizedBox(
              height: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // const Text(
                //   'Password',
                //   style: kLabelStyle,
                // ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 320,
                  child: TextFormField(
                    onChanged: (txt) {
                      confirmPass = txt;
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
                      hintText: 'Confirm password',
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
                  HapticFeedback.vibrate();
                  var reg = Register(name, phone, email, password, confirmPass);
                  context.read<SignUpFormBloc>()
                    ..add(SignUpFormEvent.registerUser(reg));
                },
                child: Text('SIGNUP'),
              ),
            ),
            OrDivider(),
            SizedBox(height: size.height * 0.01),
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
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                        (Route<dynamic> route) => false,
                  );
                },
                child: Text('Already Account?'),
              ),
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}

