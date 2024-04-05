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
import 'package:image_picker/image_picker.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../data/repository/auth_repository.dart' as _i8;
import '../../data/repository/doctor_repository.dart' as _i10;
import '../../data/repository/profile_repository.dart' as _i13;
import '../../data/repository/social_repository.dart' as _i15;
import '../../domain/repository/i_auth_repository.dart' as _i7;
import '../../domain/repository/i_doctor_repository.dart' as _i9;
import '../../domain/repository/i_profile_repository.dart' as _i12;
import '../../domain/repository/i_social_repository.dart' as _i14;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i19;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i20;
import '../../presentation/social/blocs/social_bloc/social_bloc.dart' as _i21;
import '../../router/app_router.dart' as _i3;
import '../modules/modules.dart' as _i23;
import '../services/api_client.dart' as _i22;
import '../services/network_info.dart' as _i11;

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
  gh.lazySingleton<_i7.IAuthRepository>(() => _i8.AuthRepository());
  gh.lazySingleton<_i9.IDoctorRepository>(() => _i10.DoctorRepository());
  gh.lazySingleton<_i11.INetworkInfo>(
      () => _i11.NetworkInfo(connectivity: gh<_i4.Connectivity>()));
  gh.lazySingleton<_i12.IProfileRepository>(() => _i13.ProfileRepository());
  gh.lazySingleton<_i14.ISocialRepository>(() => _i15.SocialRepository());
  gh.lazySingleton<_i16.ImagePicker>(() => modules.imagePicker);
  await gh.factoryAsync<_i17.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i19.SignInBloc>(() => _i19.SignInBloc(
        authRepository: gh<_i7.IAuthRepository>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i20.SignUpBloc>(() => _i20.SignUpBloc(
        authRepository: gh<_i7.IAuthRepository>(),
        profileRepository: gh<_i12.IProfileRepository>(),
        imagePicker: gh<_i16.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i21.SocialBloc>(() => _i21.SocialBloc(
        repository: gh<_i14.ISocialRepository>(),
        imagePicker: gh<_i16.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.singleton<_i22.ApiClient>(() => _i22.ApiClient(
        client: gh<_i5.Dio>(),
        storage: gh<_i6.FlutterSecureStorage>(),
      ));
  return getIt;
}

class _$Modules extends _i23.Modules {}
