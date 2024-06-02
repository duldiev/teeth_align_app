import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/body/change_password_body.dart';
import 'package:teeth_align_app/src/data/body/register_body.dart';
import 'package:teeth_align_app/src/data/body/sign_in_body.dart';
import 'package:teeth_align_app/src/data/models/account_model.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository extends BaseClient implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> signIn({required SignInBody body}) async {
    final request = await call(
      RestMethod.post,
      '/api/v1/authenticate',
      body: body.toMap(),
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> register({
    required RegisterBody body,
  }) async {
    final request = await call(
      RestMethod.post,
      '/api/v1/register',
      body: body.toRegisterMap(),
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, AccountEntity>> getAccount() async {
    final request = await call(
      RestMethod.get,
      '/api/v1/account',
    );
    return request.fold(
      (l) => Left(l),
      (r) => Right(AccountModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, Unit>> changePassword({
    required ChangePasswordBody body,
  }) async {
    final request = await call(
      RestMethod.post,
      '/api/v1/account/change-password',
      body: body.toMap(),
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> activate({
    required RegisterBody body,
  }) async {
    log(body.email);
    final request = await call(
      RestMethod.get,
      '/api/v1/activate',
      parametres: {'key': body.code},
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> getAuthenticated() async {
    final request = await call(
      RestMethod.get,
      '/api/v1/authenticate',
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> deleteAccount() async {
    final request = await call(
      RestMethod.delete,
      '/api/v1/deactivate',
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }
}
