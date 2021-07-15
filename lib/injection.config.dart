// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/appointment/add/add_appointment_bloc.dart' as _i15;
import 'application/appointment/appointment_bloc.dart' as _i17;
import 'application/auth/auth_bloc.dart' as _i18;
import 'application/blog/actor/blog_actor_bloc.dart' as _i3;
import 'application/blog/add/add_blog_bloc.dart' as _i16;
import 'application/blog/blog_bloc.dart' as _i19;
import 'application/doctor/doctor_bloc.dart' as _i20;
import 'domain/services/i_appointment_services.dart' as _i7;
import 'domain/services/i_auth_services.dart' as _i9;
import 'domain/services/i_blog_services.dart' as _i11;
import 'domain/services/i_doctor_services.dart' as _i13;
import 'infrastructure/appointment/appointment_services.dart' as _i8;
import 'infrastructure/auth/auth_services.dart' as _i10;
import 'infrastructure/blog/blog_services.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/doctor/doctor_services.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.factory<_i3.BlogActorBloc>(() => _i3.BlogActorBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(() => firebaseModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => firebaseModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(() => firebaseModule.storage);
  gh.lazySingleton<_i7.IAppointmentServices>(() => _i8.AppointmentServices(
      get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IAuthServices>(() =>
      _i10.AuthServices(get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IBlogServices>(() =>
      _i12.BlogServices(get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IDoctorServices>(() => _i14.DoctorServices(
      get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.factory<_i15.AddAppointmentBloc>(
      () => _i15.AddAppointmentBloc(get<_i7.IAppointmentServices>()));
  gh.factory<_i16.AddBlogBloc>(
      () => _i16.AddBlogBloc(get<_i11.IBlogServices>()));
  gh.factory<_i17.AppointmentBloc>(
      () => _i17.AppointmentBloc(get<_i7.IAppointmentServices>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i9.IAuthServices>()));
  gh.factory<_i19.BlogBloc>(() => _i19.BlogBloc(get<_i11.IBlogServices>()));
  gh.factory<_i20.DoctorBloc>(
      () => _i20.DoctorBloc(get<_i13.IDoctorServices>()));
  return get;
}

class _$FirebaseModule extends _i21.FirebaseModule {}
