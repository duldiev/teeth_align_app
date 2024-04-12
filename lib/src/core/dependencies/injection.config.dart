// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i22;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i23;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import '../../data/repository/admin_repository.dart' as _i8;
import '../../data/repository/auth_repository.dart' as _i10;
import '../../data/repository/doctor_repository.dart' as _i12;
import '../../data/repository/mentor_repository.dart' as _i14;
import '../../data/repository/patient_repository.dart' as _i17;
import '../../data/repository/profile_repository.dart' as _i19;
import '../../data/repository/social_repository.dart' as _i21;
import '../../domain/repository/i_admin_repository.dart' as _i7;
import '../../domain/repository/i_auth_repository.dart' as _i9;
import '../../domain/repository/i_doctor_repository.dart' as _i11;
import '../../domain/repository/i_mentor_repository.dart' as _i13;
import '../../domain/repository/i_patient_repository.dart' as _i16;
import '../../domain/repository/i_profile_repository.dart' as _i18;
import '../../domain/repository/i_social_repository.dart' as _i20;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i25;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i26;
import '../../presentation/home/blocs/doctor_bloc/doctor_bloc.dart' as _i29;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i27;
import '../../router/app_router.dart' as _i3;
import '../modules/modules.dart' as _i30;
import '../services/api_client.dart' as _i28;
import '../services/network_info.dart' as _i15;

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
  gh.lazySingleton<_i4.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i5.Dio>(() => modules.dio);
  gh.lazySingleton<_i6.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i7.IAdminRepository>(() => _i8.AdminRepository());
  gh.lazySingleton<_i9.IAuthRepository>(() => _i10.AuthRepository());
  gh.lazySingleton<_i11.IDoctorRepository>(() => _i12.DoctorRepository());
  gh.lazySingleton<_i13.IMentorRepository>(() => _i14.MentorRepository());
  gh.lazySingleton<_i15.INetworkInfo>(
      () => _i15.NetworkInfo(connectivity: gh<_i4.Connectivity>()));
  gh.lazySingleton<_i16.IPatientRepository>(() => _i17.PatientRepository());
  gh.lazySingleton<_i18.IProfileRepository>(() => _i19.ProfileRepository());
  gh.lazySingleton<_i20.ISocialRepository>(() => _i21.SocialRepository());
  gh.lazySingleton<_i22.ImagePicker>(() => modules.imagePicker);
  await gh.factoryAsync<_i23.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i24.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i25.SignInBloc>(() => _i25.SignInBloc(
        authRepository: gh<_i9.IAuthRepository>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i26.SignUpBloc>(() => _i26.SignUpBloc(
        authRepository: gh<_i9.IAuthRepository>(),
        profileRepository: gh<_i18.IProfileRepository>(),
        imagePicker: gh<_i22.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i27.SocialBloc>(() => _i27.SocialBloc(
        repository: gh<_i20.ISocialRepository>(),
        imagePicker: gh<_i22.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.singleton<_i28.ApiClient>(() => _i28.ApiClient(
        client: gh<_i5.Dio>(),
        storage: gh<_i6.FlutterSecureStorage>(),
      ));
  gh.factory<_i29.DoctorBloc>(
      () => _i29.DoctorBloc(repository: gh<_i11.IDoctorRepository>()));
  return getIt;
}

class _$Modules extends _i30.Modules {}
