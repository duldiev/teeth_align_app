import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/constants/urls.dart';
import 'package:teeth_align_app/src/core/interceptors/message_interceptor.dart';
import 'package:teeth_align_app/src/core/interceptors/token_interceptor.dart';

@singleton
class ApiClient {
  final Dio client;
  final FlutterSecureStorage storage;

  ApiClient({
    required this.client,
    required this.storage,
  }) {
    addInterceptors();
    updateBaseOptions();
  }

  void updateBaseOptions() {
    client.options = BaseOptions(
      baseUrl: URLs.baseUrl,
      responseType: ResponseType.json,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
  }

  addInterceptors() {
    client.interceptors.addAll([
      ChuckerDioInterceptor(),
      MessageInterceptor(),
      TokenInterceptor(),
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: _logEvent,
      ),
    ]);
  }

  _logEvent(Object? object) {
    var pattern = RegExp('.{1,800}');
    pattern
        .allMatches(object.toString())
        // ignore: avoid_print
        .forEach((match) => print(match.group(0)));
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
  }) =>
      client.get(
        url,
        queryParameters: params,
        cancelToken: cancelToken,
        options: options,
      );

  Future<Response> post(
    String url, {
    dynamic body,
    dynamic parametres,
    Options? options,
  }) =>
      client.post(
        url,
        data: body,
        queryParameters: parametres,
        options: options,
      );

  Future<Response> put(
    String url, {
    dynamic body,
    Options? options,
  }) =>
      client.put(
        url,
        data: body,
        options: options,
      );

  Future<Response> delete(
    String url, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? params,
  }) =>
      client.delete(
        url,
        data: body,
        options: options,
        queryParameters: params,
      );

  Future<Response> patch(
    String url, {
    dynamic body,
    Options? options,
    Function(int, int)? onSendProgress,
  }) =>
      client.patch(
        url,
        data: body,
        options: options,
        onSendProgress: onSendProgress,
      );
}
