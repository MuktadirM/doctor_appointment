import 'package:doctor_appointment/application/auth/signup/sign_up_form_bloc.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signup/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: SafeArea(
            child: Body()
        ),
      ),
    );
  }
}
