import 'package:doctor_appointment/application/appointment/appointment_bloc.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/core/load_failure.dart';
import 'package:doctor_appointment/presentation/core/loading_data.dart';
import 'package:doctor_appointment/presentation/doctor/blog/doctor_view_blog.dart';
import 'package:doctor_appointment/presentation/doctor/home/widgets/doctor_appointment_card.dart';
import 'package:doctor_appointment/presentation/core/initial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DoctorAppointmentView extends StatelessWidget {
  DoctorAppointmentView({Key? key}) : super(key: key);
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<AppointmentBloc>()
        ..add(const AppointmentEvent.watchAllAppointmentStarted(null)),
      child: SafeArea(
        child: BlocBuilder<AppointmentBloc, AppointmentState>(
          builder: (context, state) {
              return state.map(
                  initial: (_) => InitialData(),
                  loadInProgress: (_) => LoadingData(),
                  loadSuccess: (value){
                    final list = value.items;
                    return SmartRefresher(
                      controller: _refreshController,
                      onRefresh: (){
                        context.read<AppointmentBloc>()
                          ..add(const AppointmentEvent.watchAllAppointmentStarted(null));
                      },
                      onLoading: (){
                        _refreshController.loadComplete();
                      },
                      child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, int index) {
                            return DoctorAppointmentCard(
                              appointment: list[index],
                              callback: () {

                              },);
                          }),
                    );
                  },
                  loadFailure: (failure) => LoadFailure(failure: failure.failure));
          },
        ),
      ),
    );
  }
}
