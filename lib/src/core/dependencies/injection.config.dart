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

import '../../data/repository/admin_repository.dart' as _i18;
import '../../data/repository/auth_repository.dart' as _i30;
import '../../data/repository/calendar_repository.dart' as _i20;
import '../../data/repository/doctor_repository.dart' as _i13;
import '../../data/repository/mentor_repository.dart' as _i28;
import '../../data/repository/patient_repository.dart' as _i24;
import '../../data/repository/profile_repository.dart' as _i22;
import '../../data/repository/social_repository.dart' as _i16;
import '../../domain/repository/i_admin_repository.dart' as _i17;
import '../../domain/repository/i_auth_repository.dart' as _i29;
import '../../domain/repository/i_calendar_repository.dart' as _i19;
import '../../domain/repository/i_doctor_repository.dart' as _i12;
import '../../domain/repository/i_mentor_repository.dart' as _i27;
import '../../domain/repository/i_patient_repository.dart' as _i23;
import '../../domain/repository/i_profile_repository.dart' as _i21;
import '../../domain/repository/i_social_repository.dart' as _i15;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i34;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i32;
import '../../presentation/calendar/blocs/calendar_bloc/calendar_bloc.dart'
    as _i26;
import '../../presentation/calendar/blocs/calendar_date_bloc/calendar_date_bloc.dart'
    as _i5;
import '../../presentation/calendar/blocs/create_event_bloc/create_event_bloc.dart'
    as _i25;
import '../../presentation/home/blocs/admin_bloc/admin_bloc.dart' as _i38;
import '../../presentation/home/blocs/doctor_bloc/doctor_bloc.dart' as _i14;
import '../../presentation/home/blocs/mentor_bloc/mentor_bloc.dart' as _i37;
import '../../presentation/home/blocs/patient_bloc/patient_bloc.dart' as _i36;
import '../../presentation/report/blocs/camera_bloc/camera_bloc.dart' as _i6;
import '../../presentation/report/blocs/create_case_bloc/create_case_bloc.dart'
    as _i35;
import '../../presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart'
    as _i39;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i40;
import '../../router/app_router.dart' as _i7;
import '../modules/modules.dart' as _i41;
import '../services/api_client.dart' as _i31;
import '../services/network_info.dart' as _i33;

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
  gh.factory<_i14.DoctorBloc>(
      () => _i14.DoctorBloc(repository: gh<_i12.IDoctorRepository>()));
  gh.lazySingleton<_i15.ISocialRepository>(() => _i16.SocialRepository());
  gh.lazySingleton<_i17.IAdminRepository>(() => _i18.AdminRepository());
  gh.lazySingleton<_i19.ICalendarRepository>(() => _i20.CalendarRepository());
  gh.lazySingleton<_i21.IProfileRepository>(() => _i22.ProfileRepository());
  gh.lazySingleton<_i23.IPatientRepository>(() => _i24.PatientRepository());
  gh.factory<_i25.CreateEventBloc>(
      () => _i25.CreateEventBloc(repository: gh<_i19.ICalendarRepository>()));
  gh.factory<_i26.CalendarBloc>(
      () => _i26.CalendarBloc(repository: gh<_i19.ICalendarRepository>()));
  gh.lazySingleton<_i27.IMentorRepository>(() => _i28.MentorRepository());
  gh.lazySingleton<_i29.IAuthRepository>(() => _i30.AuthRepository());
  gh.singleton<_i31.ApiClient>(() => _i31.ApiClient(
        client: gh<_i8.Dio>(),
        storage: gh<_i10.FlutterSecureStorage>(),
      ));
  gh.factory<_i32.SignUpBloc>(() => _i32.SignUpBloc(
        authRepository: gh<_i29.IAuthRepository>(),
        profileRepository: gh<_i21.IProfileRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
        router: gh<_i7.AppRouter>(),
      ));
  gh.lazySingleton<_i33.INetworkInfo>(
      () => _i33.NetworkInfo(connectivity: gh<_i9.Connectivity>()));
  gh.factory<_i34.SignInBloc>(() => _i34.SignInBloc(
        authRepository: gh<_i29.IAuthRepository>(),
        router: gh<_i7.AppRouter>(),
      ));
  gh.factory<_i35.CreateCaseBloc>(() => _i35.CreateCaseBloc(
        imagePicker: gh<_i11.ImagePicker>(),
        repository: gh<_i12.IDoctorRepository>(),
      ));
  gh.factory<_i36.PatientBloc>(() => _i36.PatientBloc(
        repository: gh<_i23.IPatientRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
      ));
  gh.factory<_i37.MentorBloc>(
      () => _i37.MentorBloc(repository: gh<_i27.IMentorRepository>()));
  gh.factory<_i38.AdminBloc>(
      () => _i38.AdminBloc(repository: gh<_i17.IAdminRepository>()));
  gh.factory<_i39.LeaderboardBloc>(
      () => _i39.LeaderboardBloc(repository: gh<_i17.IAdminRepository>()));
  gh.factory<_i40.SocialBloc>(() => _i40.SocialBloc(
        repository: gh<_i15.ISocialRepository>(),
        imagePicker: gh<_i11.ImagePicker>(),
        router: gh<_i7.AppRouter>(),
      ));
  return getIt;
}

class _$Modules extends _i41.Modules {}
