import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teeth_align_app/src/core/constants/storage_keys.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/router/app_router.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

class TokenInterceptor extends Interceptor {
  final AppRouter appRouter = getIt<AppRouter>();
  final FlutterSecureStorage storage = getIt<FlutterSecureStorage>();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final cachedToken = await storage.read(key: StorageKeys.token);
    if (cachedToken != null) {
      options.headers['Authorization'] = 'Bearer $cachedToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (response.data != null &&
          response.data.runtimeType != List &&
          response.data?.toString().isEmpty == false &&
          response.data?['id_token'] != null &&
          response.data!['id_token'].runtimeType == String) {
        final token = response.data!['id_token'] as String;
        await storage.write(key: StorageKeys.token, value: token);
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await storage.delete(key: StorageKeys.token);
      err.requestOptions.headers['Authorization'] = null;
      appRouter
        ..popUntilRoot()
        ..replace(const SplashRoute());
    }
    super.onError(err, handler);
  }
}
