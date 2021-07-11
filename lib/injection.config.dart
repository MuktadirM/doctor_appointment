// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/appointment/appointment_bloc.dart' as _i14;
import 'domain/services/i_appointment_services.dart' as _i6;
import 'domain/services/i_auth_services.dart' as _i8;
import 'domain/services/i_blog_services.dart' as _i10;
import 'domain/services/i_doctor_services.dart' as _i12;
import 'infrastructure/appointment/appointment_services.dart' as _i7;
import 'infrastructure/auth/auth_services.dart' as _i9;
import 'infrastructure/blog/blog_services.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/doctor/doctor_services.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => firebaseModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => firebaseModule.storage);
  gh.lazySingleton<_i6.IAppointmentServices>(() => _i7.AppointmentServices(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IAuthServices>(() =>
      _i9.AuthServices(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IBlogServices>(() =>
      _i11.BlogServices(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IDoctorServices>(() => _i13.DoctorServices(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.factory<_i14.AppointmentBloc>(
      () => _i14.AppointmentBloc(get<_i6.IAppointmentServices>()));
  return get;
}

class _$FirebaseModule extends _i15.FirebaseModule {}
