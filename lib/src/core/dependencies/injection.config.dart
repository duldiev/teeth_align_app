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
import 'package:image_picker/image_picker.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../modules/modules.dart' as _i11;
import '../services/api_client.dart' as _i10;
import '../services/network_info.dart' as _i6;

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
  gh.lazySingleton<_i6.INetworkInfo>(
      () => _i6.NetworkInfo(connectivity: gh<_i3.Connectivity>()));
  gh.lazySingleton<_i7.ImagePicker>(() => modules.imagePicker);
  await gh.factoryAsync<_i8.PackageInfo>(
    () => modules.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => modules.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i10.ApiClient>(() => _i10.ApiClient(
        client: gh<_i4.Dio>(),
        storage: gh<_i5.FlutterSecureStorage>(),
      ));
  return getIt;
}

class _$Modules extends _i11.Modules {}
