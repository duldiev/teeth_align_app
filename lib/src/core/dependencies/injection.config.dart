// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:dio/dio.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/repository/admin_repository.dart' as _i17;
import '../../data/repository/auth_repository.dart' as _i25;
import '../../data/repository/doctor_repository.dart' as _i12;
import '../../data/repository/mentor_repository.dart' as _i23;
import '../../data/repository/patient_repository.dart' as _i21;
import '../../data/repository/profile_repository.dart' as _i19;
import '../../data/repository/social_repository.dart' as _i15;
import '../../domain/repository/i_admin_repository.dart' as _i16;
import '../../domain/repository/i_auth_repository.dart' as _i24;
import '../../domain/repository/i_doctor_repository.dart' as _i11;
import '../../domain/repository/i_mentor_repository.dart' as _i22;
import '../../domain/repository/i_patient_repository.dart' as _i20;
import '../../domain/repository/i_profile_repository.dart' as _i18;
import '../../domain/repository/i_social_repository.dart' as _i14;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i29;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i27;
import '../../presentation/home/blocs/admin_bloc/admin_bloc.dart' as _i33;
import '../../presentation/home/blocs/doctor_bloc/doctor_bloc.dart' as _i13;
import '../../presentation/home/blocs/mentor_bloc/mentor_bloc.dart' as _i32;
import '../../presentation/home/blocs/patient_bloc/patient_bloc.dart' as _i31;
import '../../presentation/report/blocs/camera_bloc/camera_bloc.dart' as _i5;
import '../../presentation/report/blocs/create_case_bloc/create_case_bloc.dart'
    as _i30;
import '../../presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart'
    as _i34;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i35;
import '../../router/app_router.dart' as _i6;
import '../modules/modules.dart' as _i36;
import '../services/api_client.dart' as _i26;
import '../services/network_info.dart' as _i28;

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
  gh.factory<_i5.CameraBloc>(() => _i5.CameraBloc());
  gh.singleton<_i6.AppRouter>(() => _i6.AppRouter());
  gh.lazySingleton<_i7.Dio>(() => modules.dio);
  gh.lazySingleton<_i8.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i9.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i10.ImagePicker>(() => modules.imagePicker);
  gh.lazySingleton<_i11.IDoctorRepository>(() => _i12.DoctorRepository());
  gh.factory<_i13.DoctorBloc>(
      () => _i13.DoctorBloc(repository: gh<_i11.IDoctorRepository>()));
  gh.lazySingleton<_i14.ISocialRepository>(() => _i15.SocialRepository());
  gh.lazySingleton<_i16.IAdminRepository>(() => _i17.AdminRepository());
  gh.lazySingleton<_i18.IProfileRepository>(() => _i19.ProfileRepository());
  gh.lazySingleton<_i20.IPatientRepository>(() => _i21.PatientRepository());
  gh.lazySingleton<_i22.IMentorRepository>(() => _i23.MentorRepository());
  gh.lazySingleton<_i24.IAuthRepository>(() => _i25.AuthRepository());
  gh.singleton<_i26.ApiClient>(() => _i26.ApiClient(
        client: gh<_i7.Dio>(),
        storage: gh<_i9.FlutterSecureStorage>(),
      ));
  gh.factory<_i27.SignUpBloc>(() => _i27.SignUpBloc(
        authRepository: gh<_i24.IAuthRepository>(),
        profileRepository: gh<_i18.IProfileRepository>(),
        imagePicker: gh<_i10.ImagePicker>(),
        router: gh<_i6.AppRouter>(),
      ));
  gh.lazySingleton<_i28.INetworkInfo>(
      () => _i28.NetworkInfo(connectivity: gh<_i8.Connectivity>()));
  gh.factory<_i29.SignInBloc>(() => _i29.SignInBloc(
        authRepository: gh<_i24.IAuthRepository>(),
        router: gh<_i6.AppRouter>(),
      ));
  gh.factory<_i30.CreateCaseBloc>(() => _i30.CreateCaseBloc(
        imagePicker: gh<_i10.ImagePicker>(),
        repository: gh<_i11.IDoctorRepository>(),
      ));
  gh.factory<_i31.PatientBloc>(() => _i31.PatientBloc(
        repository: gh<_i20.IPatientRepository>(),
        imagePicker: gh<_i10.ImagePicker>(),
      ));
  gh.factory<_i32.MentorBloc>(
      () => _i32.MentorBloc(repository: gh<_i22.IMentorRepository>()));
  gh.factory<_i33.AdminBloc>(
      () => _i33.AdminBloc(repository: gh<_i16.IAdminRepository>()));
  gh.factory<_i34.LeaderboardBloc>(
      () => _i34.LeaderboardBloc(repository: gh<_i16.IAdminRepository>()));
  gh.factory<_i35.SocialBloc>(() => _i35.SocialBloc(
        repository: gh<_i14.ISocialRepository>(),
        imagePicker: gh<_i10.ImagePicker>(),
        router: gh<_i6.AppRouter>(),
      ));
  return getIt;
}

class _$Modules extends _i36.Modules {}
