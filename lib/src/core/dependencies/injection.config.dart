// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i23;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i25;
import 'package:shared_preferences/shared_preferences.dart' as _i27;

import '../../data/repository/admin_repository.dart' as _i9;
import '../../data/repository/auth_repository.dart' as _i11;
import '../../data/repository/doctor_repository.dart' as _i13;
import '../../data/repository/mentor_repository.dart' as _i15;
import '../../data/repository/patient_repository.dart' as _i18;
import '../../data/repository/profile_repository.dart' as _i20;
import '../../data/repository/social_repository.dart' as _i22;
import '../../domain/repository/i_admin_repository.dart' as _i8;
import '../../domain/repository/i_auth_repository.dart' as _i10;
import '../../domain/repository/i_doctor_repository.dart' as _i12;
import '../../domain/repository/i_mentor_repository.dart' as _i14;
import '../../domain/repository/i_patient_repository.dart' as _i17;
import '../../domain/repository/i_profile_repository.dart' as _i19;
import '../../domain/repository/i_social_repository.dart' as _i21;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i28;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i29;
import '../../presentation/home/blocs/admin_bloc/admin_bloc.dart' as _i31;
import '../../presentation/home/blocs/doctor_bloc/doctor_bloc.dart' as _i34;
import '../../presentation/home/blocs/mentor_bloc/mentor_bloc.dart' as _i24;
import '../../presentation/home/blocs/patient_bloc/patient_bloc.dart' as _i26;
import '../../presentation/report/blocs/camera_bloc/camera_bloc.dart' as _i4;
import '../../presentation/report/blocs/create_case_bloc/create_case_bloc.dart'
    as _i33;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i30;
import '../../router/app_router.dart' as _i3;
import '../modules/modules.dart' as _i35;
import '../services/api_client.dart' as _i32;
import '../services/network_info.dart' as _i16;

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
  gh.singleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.CameraBloc>(() => _i4.CameraBloc());
  gh.lazySingleton<_i5.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i6.Dio>(() => modules.dio);
  gh.lazySingleton<_i7.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i8.IAdminRepository>(() => _i9.AdminRepository());
  gh.lazySingleton<_i10.IAuthRepository>(() => _i11.AuthRepository());
  gh.lazySingleton<_i12.IDoctorRepository>(() => _i13.DoctorRepository());
  gh.lazySingleton<_i14.IMentorRepository>(() => _i15.MentorRepository());
  gh.lazySingleton<_i16.INetworkInfo>(
      () => _i16.NetworkInfo(connectivity: gh<_i5.Connectivity>()));
  gh.lazySingleton<_i17.IPatientRepository>(() => _i18.PatientRepository());
  gh.lazySingleton<_i19.IProfileRepository>(() => _i20.ProfileRepository());
  gh.lazySingleton<_i21.ISocialRepository>(() => _i22.SocialRepository());
  gh.lazySingleton<_i23.ImagePicker>(() => modules.imagePicker);
  gh.factory<_i24.MentorBloc>(
      () => _i24.MentorBloc(repository: gh<_i14.IMentorRepository>()));
  await gh.factoryAsync<_i25.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  gh.factory<_i26.PatientBloc>(() => _i26.PatientBloc(
        repository: gh<_i17.IPatientRepository>(),
        imagePicker: gh<_i23.ImagePicker>(),
      ));
  await gh.factoryAsync<_i27.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i28.SignInBloc>(() => _i28.SignInBloc(
        authRepository: gh<_i10.IAuthRepository>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i29.SignUpBloc>(() => _i29.SignUpBloc(
        authRepository: gh<_i10.IAuthRepository>(),
        profileRepository: gh<_i19.IProfileRepository>(),
        imagePicker: gh<_i23.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i30.SocialBloc>(() => _i30.SocialBloc(
        repository: gh<_i21.ISocialRepository>(),
        imagePicker: gh<_i23.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i31.AdminBloc>(
      () => _i31.AdminBloc(repository: gh<_i8.IAdminRepository>()));
  gh.singleton<_i32.ApiClient>(() => _i32.ApiClient(
        client: gh<_i6.Dio>(),
        storage: gh<_i7.FlutterSecureStorage>(),
      ));
  gh.factory<_i33.CreateCaseBloc>(() => _i33.CreateCaseBloc(
        imagePicker: gh<_i23.ImagePicker>(),
        repository: gh<_i12.IDoctorRepository>(),
      ));
  gh.factory<_i34.DoctorBloc>(
      () => _i34.DoctorBloc(repository: gh<_i12.IDoctorRepository>()));
  return getIt;
}

class _$Modules extends _i35.Modules {}
