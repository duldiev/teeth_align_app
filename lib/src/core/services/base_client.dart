import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/network_info.dart';
import 'package:teeth_align_app/src/router/app_router.dart';
import 'api_client.dart';

enum RestMethod { get, post, put, delete, patch }

abstract class BaseClient {
  final INetworkInfo networkInfo = getIt<INetworkInfo>();
  final ApiClient restClientService = getIt<ApiClient>();
  final AppRouter router = getIt<AppRouter>();

  Future<Either<Failure, dynamic>> call(
    RestMethod method,
    String url, {
    dynamic body,
    dynamic parametres,
    CancelToken? cancelToken,
    Options? options,
    Function(int, int)? onSendProgress,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        Response response;
        switch (method) {
          case RestMethod.get:
            response = await restClientService.get(
              url,
              params: parametres,
              cancelToken: cancelToken,
              options: options,
            );
            break;

          case RestMethod.post:
            response = await restClientService.post(
              url,
              body: body,
              parametres: parametres,
              options: options,
            );
            break;

          case RestMethod.put:
            response = await restClientService.put(
              url,
              body: body,
              options: options,
            );
            break;

          case RestMethod.delete:
            response = await restClientService.delete(
              url,
              body: body,
              options: options,
              params: parametres,
            );
            break;

          case RestMethod.patch:
            response = await restClientService.patch(
              url,
              body: body,
              options: options,
              onSendProgress: onSendProgress,
            );
            break;
        }
        return Right(response.data);
      } on ServerException catch (e) {
        return Left(ServerFailure(response: e.response));
      } on DioConnectionError catch (e) {
        return Left(DioFailure(response: e.response));
      } on DioException catch (e) {
        return Left(DioFailure(response: e.response));
      } on SocketException {
        return Left(NoConnectionFailure());
      } on Exception {
        return Left(NoConnectionFailure());
      } catch (_) {
        return Left(NoConnectionFailure());
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}
