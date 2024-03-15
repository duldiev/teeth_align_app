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
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i13;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../data/repository/auth_repository.dart' as _i8;
import '../../data/repository/profile_repository.dart' as _i11;
import '../../domain/repository/i_auth_repository.dart' as _i7;
import '../../domain/repository/i_profile_repository.dart' as _i10;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i15;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i16;
import '../../router/app_router.dart' as _i3;
import '../modules/modules.dart' as _i18;
import '../services/api_client.dart' as _i17;
import '../services/network_info.dart' as _i9;

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
  gh.lazySingleton<_i9.INetworkInfo>(
      () => _i9.NetworkInfo(connectivity: gh<_i4.Connectivity>()));
  gh.lazySingleton<_i10.IProfileRepository>(() => _i11.ProfileRepository());
  gh.lazySingleton<_i12.ImagePicker>(() => modules.imagePicker);
  await gh.factoryAsync<_i13.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i15.SignInBloc>(() => _i15.SignInBloc(
        authRepository: gh<_i7.IAuthRepository>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.factory<_i16.SignUpBloc>(() => _i16.SignUpBloc(
        authRepository: gh<_i7.IAuthRepository>(),
        profileRepository: gh<_i10.IProfileRepository>(),
        imagePicker: gh<_i12.ImagePicker>(),
        router: gh<_i3.AppRouter>(),
      ));
  gh.singleton<_i17.ApiClient>(() => _i17.ApiClient(
        client: gh<_i5.Dio>(),
        storage: gh<_i6.FlutterSecureStorage>(),
      ));
  return getIt;
}

class _$Modules extends _i18.Modules {}
