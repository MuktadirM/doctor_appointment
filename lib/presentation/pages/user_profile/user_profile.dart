import 'package:doctor_appointment/application/auth/auth_bloc.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/presentation/pages/authentication/signin/login_screen.dart';
import 'package:doctor_appointment/presentation/pages/user_profile/edit_profile.dart';
import 'package:doctor_appointment/presentation/utils/time_diff.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);
  RefreshController _refreshController = RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (ctx, state) {
            state.map(
              initial: (_) {},
              authenticated: (data) {
                _refreshController.loadComplete();
              },
              unauthenticated: (_) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (_) => false,
                );
              },
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.when(
                  initial: () => _Initial(),
                  authenticated: (data) {
                    return SmartRefresher(
                      enablePullDown: true,
                      controller: _refreshController,
                    onRefresh: (){
                        context.read<AuthBloc>()..add(const AuthEvent.authCheckRequested());
                    },
                      onLoading: (){
                        _refreshController.loadComplete();
                      },
                    child: _AuthUserDataView(
                      profile: data,
                    ),
                    );
                  },
                  unauthenticated: () => _UnAuth());
            },
          ),
        ),
      ),
    );
  }
}

class _UnAuth extends StatelessWidget {
  const _UnAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            Text('Logout processing....'),
          ],
        ),
      ),
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Initial Value'),
    );
  }
}

class _AuthUserDataView extends StatelessWidget {
  final Profile profile;

  const _AuthUserDataView({required this.profile, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Profile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundImage: NetworkImage(profile.image!),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: _TextRow(
            icon: Icons.person,
            title: profile.name!,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: _TextRow(
            icon: Icons.timer,
            title: 'Created : ' + TimeDiffForHuman.convert(profile.createdAt.toString()),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(profile),
                    ),
                  );
                },
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
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
                  context.read<AuthBloc>()..add(AuthEvent.signedOut());
                },
                child: Text('Logout'),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _TextRow extends StatelessWidget {
  final String title;
  final IconData icon;

  const _TextRow({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
