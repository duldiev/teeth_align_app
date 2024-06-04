// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i9;
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/repository/admin_repository.dart' as _i19;
import '../../data/repository/auth_repository.dart' as _i31;
import '../../data/repository/calendar_repository.dart' as _i21;
import '../../data/repository/doctor_repository.dart' as _i13;
import '../../data/repository/mentor_repository.dart' as _i29;
import '../../data/repository/patient_repository.dart' as _i25;
import '../../data/repository/profile_repository.dart' as _i23;
import '../../data/repository/social_repository.dart' as _i17;
import '../../domain/repository/i_admin_repository.dart' as _i18;
import '../../domain/repository/i_auth_repository.dart' as _i30;
import '../../domain/repository/i_calendar_repository.dart' as _i20;
import '../../domain/repository/i_doctor_repository.dart' as _i12;
import '../../domain/repository/i_mentor_repository.dart' as _i28;
import '../../domain/repository/i_patient_repository.dart' as _i24;
import '../../domain/repository/i_profile_repository.dart' as _i22;
import '../../domain/repository/i_social_repository.dart' as _i16;
import '../../presentation/account/blocs/rate_doctor_bloc/rate_doctor_bloc.dart'
    as _i15;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i33;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i38;
import '../../presentation/calendar/blocs/calendar_bloc/calendar_bloc.dart'
    as _i27;
import '../../presentation/calendar/blocs/calendar_date_bloc/calendar_date_bloc.dart'
    as _i5;
import '../../presentation/calendar/blocs/create_event_bloc/create_event_bloc.dart'
    as _i26;
import '../../presentation/home/blocs/admin_bloc/admin_bloc.dart' as _i40;
import '../../presentation/home/blocs/doctor_bloc/doctor_bloc.dart' as _i41;
import '../../presentation/home/blocs/mentor_bloc/mentor_bloc.dart' as _i35;
import '../../presentation/home/blocs/patient_bloc/patient_bloc.dart' as _i37;
import '../../presentation/report/blocs/camera_bloc/camera_bloc.dart' as _i6;
import '../../presentation/report/blocs/create_case_bloc/create_case_bloc.dart'
    as _i36;
import '../../presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart'
    as _i14;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i39;
import '../../router/app_router.dart' as _i7;
import '../modules/modules.dart' as _i42;
import '../services/api_client.dart' as _i32;
import '../services/network_info.dart' as _i34;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final modules = _$Modules();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  await gh.factoryAsync<_i4.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  gh.factory<_i5.CalendarDateBloc>(() => _i5.CalendarDateBloc());
  gh.factory<_i6.CameraBloc>(() => _i6.CameraBloc());
  gh.singleton<_i7.AppRouter>(() => _i7.AppRouter());
  gh.lazySingleton<_i8.Dio>(() => modules.dio);
  gh.lazySingleton<_i9.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i10.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i11.ImagePicker>(() => modules.imagePicker);
  gh.lazySingleton<_i12.IDoctorRepository>(() => _i13.DoctorRepository());
  gh.factory<_i14.LeaderboardBloc>(
      () => _i14.LeaderboardBloc(repository: gh<_i12.IDoctorRepository>()));
  gh.factory<_i15.RateDoctorBloc>(
      () => _i15.RateDoctorBloc(repository: gh<_i12.IDoctorRepository>()));
  gh.lazySingleton<_i16.ISocialRepository>(() => _i17.SocialRepository());
  gh.lazySingleton<_i18.IAdminRepository>(() => _i19.AdminRepository());
  gh.lazySingleton<_i20.ICalendarRepository>(() => _i21.CalendarRepository());
  gh.lazySingleton<_i22.IProfileRepository>(() => _i23.ProfileRepository());
  gh.lazySingleton<_i24.IPatientRepository>(() => _i25.PatientRepository());
  gh.factory<_i26.CreateEventBloc>(
      () => _i26.CreateEventBloc(repository: gh<_i20.ICalendarRepository>()));
  gh.factory<_i27.CalendarBloc>(
      () => _i27.CalendarBloc(repository: gh<_i20.ICalendarRepository>()));
  gh.lazySingleton<_i28.IMentorRepository>(() => _i29.MentorRepository());
  gh.lazySingleton<_i30.IAuthRepository>(() => _i31.AuthRepository());
  gh.singleton<_i32.ApiClient>(() => _i32.ApiClient(
        client: gh<_i8.Dio>(),
        storage: gh<_i10.FlutterSecureStorage>(),
      ));
  gh.factory<_i33.SignInBloc>(() => _i33.SignInBloc(
        authRepository: gh<_i30.IAuthRepository>(),
        router: gh<_i7.AppRouter>(),
        secureStorage: gh<_i10.FlutterSecureStorage>(),
      ));
  gh.lazySingleton<_i34.INetworkInfo>(
      () => _i34.NetworkInfo(connectivity: gh<_i9.Connectivity>()));
  gh.factory<_i35.MentorBloc>(() => _i35.MentorBloc(
        repository: gh<_i28.IMentorRepository>(),
        authRepository: gh<_i30.IAuthRepository>(),
      ));
  gh.factory<_i36.CreateCaseBloc>(() => _i36.CreateCaseBloc(
        imagePicker: gh<_i11.ImagePicker>(),
        repository: gh<_i12.IDoctorRepository>(),
      ));
  gh.factory<_i37.PatientBloc>(() => _i37.PatientBloc(
        repository: gh<_i24.IPatientRepository>(),
        authRepository: gh<_i30.IAuthRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
      ));
  gh.factory<_i38.SignUpBloc>(() => _i38.SignUpBloc(
        authRepository: gh<_i30.IAuthRepository>(),
        profileRepository: gh<_i22.IProfileRepository>(),
        doctorRepository: gh<_i12.IDoctorRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
        router: gh<_i7.AppRouter>(),
      ));
  gh.factory<_i39.SocialBloc>(() => _i39.SocialBloc(
        repository: gh<_i16.ISocialRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
        router: gh<_i7.AppRouter>(),
      ));
  gh.factory<_i40.AdminBloc>(() => _i40.AdminBloc(
        repository: gh<_i18.IAdminRepository>(),
        authRepository: gh<_i30.IAuthRepository>(),
      ));
  gh.factory<_i41.DoctorBloc>(() => _i41.DoctorBloc(
        repository: gh<_i12.IDoctorRepository>(),
        authRepository: gh<_i30.IAuthRepository>(),
      ));
  return getIt;
}

class _$Modules extends _i42.Modules {}
