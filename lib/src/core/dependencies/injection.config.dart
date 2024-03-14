// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../data/repository/auth_repository.dart' as _i7;
import '../../domain/repository/i_auth_repository.dart' as _i6;
import '../../presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart' as _i12;
import '../../presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart' as _i13;
import '../modules/modules.dart' as _i15;
import '../services/api_client.dart' as _i14;
import '../services/network_info.dart' as _i8;

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
  gh.lazySingleton<_i3.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i4.Dio>(() => modules.dio);
  gh.lazySingleton<_i5.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepository());
  gh.lazySingleton<_i8.INetworkInfo>(
      () => _i8.NetworkInfo(connectivity: gh<_i3.Connectivity>()));
  gh.lazySingleton<_i9.ImagePicker>(() => modules.imagePicker);
  await gh.factoryAsync<_i10.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i12.SignInBloc>(
      () => _i12.SignInBloc(authRepository: gh<_i6.IAuthRepository>()));
  gh.factory<_i13.SignUpBloc>(() => _i13.SignUpBloc());
  gh.lazySingleton<_i14.ApiClient>(() => _i14.ApiClient(
        client: gh<_i4.Dio>(),
        storage: gh<_i5.FlutterSecureStorage>(),
      ));
  return getIt;
}

class _$Modules extends _i15.Modules {}
